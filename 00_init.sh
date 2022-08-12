#!/bin/bash

# Last update : August, 2022
# Author: cetin@hashicorp.com
# Description: Start or Reset a one node Minikube K8s cluster and a Vault cluster in dev mode

script_name=$(basename "$0")
version="0.1.0"

echo "$script_name - version $version"
echo ""

# Initialize Vault and Kubernetes clusters
./00_init_vault.sh
echo ""
./00_init_minikube.sh
