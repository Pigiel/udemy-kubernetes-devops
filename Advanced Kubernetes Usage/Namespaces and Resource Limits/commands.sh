# Namespaces & Resource Quotas
# Create namespace
kubectl create namespace <namespace name>
kubectl get namespace
# Assign limits for namespace
kubectl create namespace cpu-limited-tomcat
# Deploy app
kubectl create -f cpu-limits.yaml —namespace=cpu-limited-tomcat # (from the GitHub repo directory for this lecture)
kubectl apply -f tomcat-deployment.yaml —namespace=cpu-limited-tomcat # (from the GitHub repo directory for this lecture)
kubectl describe deployment tomcat-deployment —namespace=cpu-limited-tomcat
# Kubernetes deployments is failed due to all or nothing idea
# Only 2 pods can be created within quota and deployment requests minimum 3 therefore deployment is failed