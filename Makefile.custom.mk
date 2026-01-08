SHELL:=/usr/bin/env bash

# Kind cluster name to use
KIND_CLUSTER_NAME ?= "kyverno-cluster"

# If not already set through env
KUBERNETES_VERSION ?= v1.21.1

##@ Generate

.PHONY: generate
generate: ## Replace variables on Helm manifests.
	./hack/template.sh

.PHONY: verify
verify:
	@$(MAKE) generate
	git diff --exit-code

##@ Test

.PHONY: clean
clean: ## Delete test manifests from kind cluster.
	./hack/cleanup-local.sh

.PHONY: tilt-up
tilt-up: ## Start Tilt
	tilt up

.PHONY: kind-get-kubeconfig
kind-get-kubeconfig:
	kind get kubeconfig --name $(KIND_CLUSTER_NAME) > $(PWD)/kube.config

.PHONY: dabs
dabs: generate
	dabs.sh --generate-metadata --chart-dir helm/kyverno-policies-connectivity
