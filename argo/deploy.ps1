
kubectl create namespace argocd

# deploy the argocd solution
kubectl apply -n argocd -f ./argo-cd/install.yaml
kubectl get pods -n argocd 

# Access argo server using port forwarding
kubectl port-forward svc/argocd-server -n argocd 8090:443

# login as admin 
# password is the name of the pod below.
kubectl get pods -n argocd -l app.kubernetes.io/name=argocd-server -o name


# create the argo application