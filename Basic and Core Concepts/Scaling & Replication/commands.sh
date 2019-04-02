# Scaling Commands
kubectl scale --replicas=4 deployment/tomcat-deployment 
 
kubectl expose deployment tomcat-deployment --type=NodePort
kubectl expose deployment tomcat-deployment --type=LoadBalancer --port=8080 --target-port=8080 --name tomcat-load-balancer
 
kubectl describe services tomcat-load-balancer

# Deployments Commands
kubectl get deployments
kubectl rollout status
kubectl set image
kubectl rollout history