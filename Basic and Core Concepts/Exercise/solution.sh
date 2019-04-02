### Presented solution
# Use kubectl run to run the default mongo iamge
kubectl run mongo-exercise-1 --image=mongo --port=27017
# Use kubectl scale to scale the deployment to 4 replicas
kubectl scale --replicas=4 deployment/mongo-exercise-1