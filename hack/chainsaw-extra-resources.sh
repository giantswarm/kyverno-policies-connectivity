#!/usr/bin/env bash

set -euo pipefail

# Pre-install CRDs before policies so that:
# 1. Kyverno admission webhooks are registered for these resource types at policy install time.
# 2. Helm .Capabilities.APIVersions checks succeed for conditional policies.

echo "Installing VSphereCluster CRD (infrastructure.cluster.x-k8s.io)..."
kubectl apply -f https://raw.githubusercontent.com/kubernetes-sigs/cluster-api-provider-vsphere/refs/heads/main/config/default/crd/bases/infrastructure.cluster.x-k8s.io_vsphereclusters.yaml

echo "All extra resources installed."
