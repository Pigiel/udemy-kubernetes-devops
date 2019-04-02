# Create local volumes in kubernetes
kubectl create -f local-volumes.yaml

# Apply changes to deployments
kubectl apply -f mysql-deployment.yaml
kubectl apply -f wordpress-deployment.yaml

# Get service URL from minikube
minikube service wordpress --url
# Other method
kubectl get service wordpress