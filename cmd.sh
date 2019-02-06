#!/usr/bin/env sh

echo "checking if kind cluster already exists"

CLUSTER_LIST=$(kind get clusters)

for c in ${CLUSTER_LIST}; do
    if [ "${c}" = "${name}" ]; then
        clusterExists=true
    fi
done

if [ ${clusterExists} ]; then
    echo "kind cluster already exists, use the existing kubeconfig: kind-config-$name"
    echo "if you no longer have access to the kind clusters kubeconfig please create a new cluster"
else
    echo "creating kind cluster"

    kind create cluster --config /config.yaml --name ${name}
    cat $(kind get kubeconfig-path --name="${name}") > /configDir/kind-config-${name}.yaml
fi
