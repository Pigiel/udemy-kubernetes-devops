# Commands to run the deployment
kubectl apply -f deployment.yaml
kubectl expose deployment tomcat-deployment --type=NodePort
# Only if you run the minikube instance
minikube service tomcat-deployment --url
curl <URL>

# Basic Kubectl commands
kubectl get pods
kubectl get pods [pod name]
 
kubectl expose <type name> <identifier/name> [—port=external port] [—target-port=container-port [—type=service-type]
kubectl expose deployment tomcat-deployment --type=NodePort
 
kubectl port-forward <pod name> [LOCAL_PORT:]REMOTE_PORT]
 
kubectl attach <pod name> -c <container>
 
kubectl exec  [-it] <pod name> [-c CONTAINER] — COMMAND [args…]
kubectl exec -it <pod name> bash
 
kubectl label [—overwrite] <type> KEY_1=VAL_1 ….
kubectl label pods <pod name> healthy=fasle
 
kubectl run <name> —image=image
kubectl run hazelcast --image=hazelcast/hazelcast --port=5701
# The hazelcast docker image has been moved to hazelcast/hazelcast (https://hub.docker.com/r/hazelcast/hazelcast
 
kubectl describe pod