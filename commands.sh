kind create cluster --name k8s-cluster --config=create-cluster.yaml #create a k8s cluster

kubectl apply -f deployment.yaml -f service.yaml

kubectl apply -f ./web/deployment.yaml -f ./web/service.yaml

kubectl apply -f ./welcome/deployment.yaml -f ./welcome/service.yaml

kubectl get all

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml

kubectl apply -f ingress.yaml

kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=90s

# kubectl port-forward service/nginx-service 80:80 -> for testing

kubectl apply -f https://kind.sigs.k8s.io/examples/ingress/deploy-ingress-nginx.yaml

