# Commands to run the applicaiton
kubectl apply -f local-volume.yaml
kubectl apply -f ghost-deployment.yaml
# Autoscale the deployment
kubectl autoscale deployment ghost --cpu-percent=50 --min=1 --max=5