# playground-k8s-keycloack

Playground to test Keycloak on a local k8s cluster.

## Requirements

* [k3d](https://k3d.io/)

## Usage

To spin up the kubernetes cluster with Keycloak installed:

```sh
./create.sh
```

When the script completes you can open [localhost:8081](http://localhost:8081)
to access the admin console (use `admin` for both username and password).
