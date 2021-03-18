#!/bin/sh

SCRIPT_DIR="$(cd "$( dirname "$0" )" >/dev/null && pwd )"

k3d cluster create --api-port 6550 -p "8081:80@loadbalancer" --agents 2 playground

kubectl create -f https://raw.githubusercontent.com/keycloak/keycloak-quickstarts/latest/kubernetes-examples/keycloak.yaml
kubectl rollout status deployment keycloak
kubectl apply -f $SCRIPT_DIR/ingress.yaml

echo "http://localhost:8081"
