# Michael Giraldo

# Start minikube
minikube start

# Run a kubectl binary matching the cluster version
# https://minikube.sigs.k8s.io/docs/commands/kubectl/
# minikube kubectl

# To point your shell to minikube's docker-daemon, run:
eval $(minikube -p minikube docker-env)

#build custom Alpine base image
docker build --tag ft_alpine:telegraf -f srcs/alpine/dockerfile .

#build custom Alpine images
docker build --tag ft_influxdb:v2.0.0-rc.4 -f srcs/influxdb/dockerfile .
docker build --tag ft_ftps src/ftps mg


kubectl apply -f https://raw.githubusercontent.com/influxdata/docs-v2/master/static/downloads/influxdb-k8-minikube.yaml


kubectl cluster-inf