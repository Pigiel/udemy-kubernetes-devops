# Tiller deloyment in kubernetes cluster

# Create tiller service account
kubectl --namespace kube-system create serviceaccount tiller
# Give tiller access to administer kubernetes in all namespaces
kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount kube-system:tiller
# Upgrade tiller instance
helm init --service-account tiller --upgrade