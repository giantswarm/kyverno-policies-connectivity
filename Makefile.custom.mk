SHELL:=/usr/bin/env bash

# Makefile.gen.chainsaw.mk defaults to the `kyverno-policies` chart, this repository ships
# `kyverno-policies-connectivity`. Cluster name, Kubernetes and Kyverno versions come from the
# generated defaults so local runs match CI.
KYVERNO_POLICIES_APP_NAME ?= kyverno-policies-connectivity

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
