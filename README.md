# kubeconfig-extractor
## Build status

[![Docker Repository on Quay](https://quay.io/repository/openshift-metal3/kubeconfig-extractor/status "Docker Repository on Quay")](https://quay.io/repository/openshift-metal3/kubeconfig-extractor)

## Example usage

    sudo podman run --volume ${PWD}:/etc/kubernetes/static-pod-resources:z quay.io/openshift-metal3/kubeconfig-extractor /etc/kubernetes/static-pod-resources/kubeconfig /etc/kubernetes/static-pod-resources/clusterrc

The above takes a kubeconfig file in the current directory and extracts its info into a clusterrc file in the current directory
