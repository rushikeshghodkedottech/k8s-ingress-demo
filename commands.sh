kubectl apply -f deployment.yaml -f service.yaml

kubectl apply -f ./web/deployment.yaml -f ./web/service.yaml

kubectl apply -f ./welcome/deployment.yaml -f ./welcome/service.yaml

kubectl get all

# kubectl port-forward service/nginx-service 80:80 -> for testing

kubectl apply -f ingress.yaml
# or
kubectl apply -f https://kind.sigs.k8s.io/examples/ingress/deploy-ingress-nginx.yaml