# Usage & Resource Monitoring
# Allow plugin in minikube - may take a while
minikube addons enable heapster
kubectl get pods --namespace=kube-system
# Opens grafana dashboard
minikube addons open heapster
# admin/admin