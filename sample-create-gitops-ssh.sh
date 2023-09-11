export WORKLOAD_NAME="tanzu-java-web-app"
export DEVELOPER_NAMESPACE="my-space"

tanzu apps workload delete ${WORKLOAD_NAME} --yes  -n ${DEVELOPER_NAMESPACE}
tanzu apps workload create -f ./workload-tanzu-java-web-app-gitops-ssh.yaml --yes   -n ${DEVELOPER_NAMESPACE}