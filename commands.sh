kubectl apply -f deployment.yaml

kubectl apply -f service.yaml

kubectl get all

kubectl port-forward service/nginx-service 80:80

kubectl apply -f https://kind.sigs.k8s.io/examples/ingress/deploy-ingress-nginx.yaml