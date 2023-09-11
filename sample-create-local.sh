export WORKLOAD_NAME="tanzu-java-web-app"
export DEVELOPER_NAMESPACE="my-space"

tanzu apps workload delete tanzu-java-web-app --yes -n ${DEVELOPER_NAMESPACE}
tanzu apps workload apply --file ./workload.yaml \
	-n ${DEVELOPER_NAMESPACE} \
	--debug --yes --local-path .

