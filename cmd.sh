#!/usr/bin/env sh

echo "checking if kind cluster already exists"

CLUSTER_LIST=$(kind get clusters)

for c in ${CLUSTER_LIST}; do
    if [ "${c}" = "${name}" ]; then
        clusterExists=true
    fi
done

if [ ${clusterExists} ]; then
    echo "kind cluster already exists"

    kind get kubeconfig-path --name="${name}" > /kubeConfig
else
    echo "creating kind cluster"

    kind create cluster --name ${name}
    kind get kubeconfig-path --name="${name}" > /kubeConfig
fi
