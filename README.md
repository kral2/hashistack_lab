# HashiStack LAB

This project helps you to setup infrastructure pieces to quickly experiment with the HashiCorp products.

It currently suppports launching the following tools:

- a Vault server in DEV mode,
- a one-node Minikube cluster.

You will need to have Vault, Minikube and a Docker Engine already installed on your system.

## Start and stop the clusters

To start a Kubernetes cluster and a Vault server from scratch, just run the *00_init.sh* script.

```shell
> ./00_init.sh
```

If Vault or Minikube are already running on your system, you will have the choice to reset both with the default configuration or to abort.

To stop your Kubernetes cluster and your Vault server, just run the *99_kill.sh* script.

```bash
> ./99_kill.sh
```

Minikube and Vault can be started and stopped individually using the corresponding scripts.

## Accessing your clusters

Visit http://127.0.0.1:8200/ui to access the Vault server GUI. You can authenticate with the following information:

- auth method: Token
- Token: root

Run the command below in another terminal to open the Kubernetes dashboard in your default browser:

```shell
   minikube dashboard
```

## Misc

Vault write its logs to `~/.hashistack/log/vault.log`. This file is deleted when the Vault server is stopped using kill scripts.
