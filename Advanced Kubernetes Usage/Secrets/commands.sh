# Commands to create secret
# From file
kubectl create secret generic db-user-pass --from-file=username.txt --from-file=password.txt
# Direct from kubectl command
kubectl create secret generic mysql-pass --from-literal=password=PASSWORDS_IN_PLAIN_TEXT_ARE_BAD_WE_WILL_SHOW_SOMETHING_MORE_SECURE_LATER

kubectl get secret

# Apply changes to applicaiton or create new one if doesn't exist 
kubectl apply -f mysql-deployment.yaml
kubectl apply -f wordpress-deployment.yaml
# Get servcie URL from minikube
minikube service wordpress --url