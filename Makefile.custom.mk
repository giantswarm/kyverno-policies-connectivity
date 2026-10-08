SHELL:=/usr/bin/env bash

# Until the devctl chart-dir fix lands, Makefile.gen.chainsaw.mk installs the `kyverno-policies`
# chart, and its `dabs` target builds helm/kyverno-policies, which this override cannot fix. Drop this
# once the generated file takes the chart from helm/. Cluster name, Kubernetes and Kyverno versions
# come from the generated defaults so local runs match CI.
KYVERNO_POLICIES_APP_NAME ?= kyverno-policies-connectivity

##@ Generate

.PHONY: generate
generate: ## Replace variables on Helm manifests.
	./hack/template.sh

.PHONY: verify
verify:
	@$(MAKE) generate
	git diff --exit-code
