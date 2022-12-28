#!/bin/bash
# If any command executed return a non-zero output, exit the script
set -e

COMMIT_SHA1=$CIRCLE_SHA1

# Export the Env so is available for envsubst
export COMMIT_SHA1=$COMMIT_SHA1

# Since envsubst can only work on files using input/output redir
# In-place substitution is not feasible.
# This saves the output to be substituted into another file. 
# Then overwrites the original file with the new one.
envsubst < ./.circleci/kube/deployment.yml.template > ./.circleci/kube/deployment.yml
echo "$KUBERNETES_KUBECONFIG" | base64 --decode > kubeconfig.yml

./kubectl --kubeconfig=kubeconfig.yml get nodes
./kubectl --kubeconfig=kubeconfig.yml apply -f ./.circleci/kube