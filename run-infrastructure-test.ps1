docker builder builder -t sample-app --no-cache .
kubectl --context docker-desktop apply -f .\kubernetes\deployment.yaml -f .\kubernetes\service.yaml -f .\kubernetes\ingress.yaml