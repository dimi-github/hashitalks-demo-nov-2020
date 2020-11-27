#!/bin/sh
set -o xtrace
#deleting before installing 
helm delete vault
#adding hashicorp helm repo
helm repo add hashicorp https://helm.releases.hashicorp.com
#helm install vault hashicorp/vault --version 0.6.0

#install the helm chart with custom values file, 
#vault will be exposed to port 30000 nodePort in this docker desktop k8s env
helm install \
  vault \
  hashicorp/vault \
  -f vault-helm-values.yaml \
  --version 0.8.0