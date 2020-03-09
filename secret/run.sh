kubectl -n openfaas-fn create secret generic pn-faas-secret --from-file ../platform.configuration/platform/config.json
kubectl -n default create secret generic pn-config --from-file ../platform.configuration/platform/config.json
