# Auto-Scaling
# Since the latest minikube doesn't enable metrics-server by default
minikube addons enable metrics-server
# Deploy the applicaiton 
kubectl apply -f wordpress-deployment.yaml
# Set autoscale parameter to use 50% of CPU per pod
kubectl autoscale deployment wordpress --cpu-percent=50 --min=1 --max=5
# Generate HTTP load to simulate traffic - may require several sessions
kubectl run -i --tty load-generator --image=busybox --generator=run-pod/v1 /bin/sh
# Exec script in busybox
while true; do wget -q -O- http://wordpress.default.svc.cluster.local; done
# Check the hpa (Horizontal Pod Autoscaler) status
kubectl get hpa