# hello-kubernetes
Very simple Hello world application for testing dev tools on a simplified kubernetes config

## USAGE

```bash
    ./gradlew clean assemble

    # This step assumes you have docker installed and running locally
    ./app-containerise.sh <docker_repo> <version>

    # These steps of course assumes minikube is installed locally
    minikube start
    minikube apply -f hello-kubernetes.yaml
```