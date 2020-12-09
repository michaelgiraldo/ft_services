# Michael Giraldo

# https://minikube.sigs.k8s.io/docs/commands/start/
# Start minikube with addons
#minikube start --addons metallb metrics-server dashboard
#minikube start --cpus 4 --memory 12g --addons metallb --addons metrics-server --addons dashboard & wait
minikube start --addons metallb --addons metrics-server --addons dashboard & wait


#https://minikube.sigs.k8s.io/docs/commands/addons/
# Enable minikube addons 
# minikube addons enable metallb
# minikube addons enable metrics-server
# minikube addons enable dashboard

# https://minikube.sigs.k8s.io/docs/commands/docker-env/
# use the docker daemon from minikube
# eval $(minikube docker-env)

# https://minikube.sigs.k8s.io/docs/commands/docker-env/
# To point your shell to minikube's docker-daemon, run:
eval $(minikube -p minikube docker-env)

# Run a kubectl binary matching the cluster version
# https://minikube.sigs.k8s.io/docs/commands/kubectl/
# minikube kubectl

# build custom Alpine base image
docker build --tag alpine:ft_services -f srcs/alpine/dockerfile . & wait

# build custom application image 
docker build --tag ftps:ft_services -f srcs/ftps/dockerfile . & wait
docker build --tag grafana:ft_services -f srcs/grafana/dockerfile . & wait
docker build --tag influxdb:ft_services -f srcs/influxdb/dockerfile . & wait
docker build --tag mysql:ft_services -f srcs/mysql/dockerfile . & wait
docker build --tag nginx:ft_services -f srcs/nginx/dockerfile . & wait
docker build --tag phpmyadmin:ft_services -f srcs/phpmyadmin/dockerfile . & wait
docker build --tag wordpress:ft_services -f srcs/wordpress/dockerfile . & wait

# appl metallb configuraiton file
# kubectl apply -f ./srcs/metallb/metallb.yaml

#apply yaml sources from kustomization file
kubectl apply -k srcs/manifest/

#kubectl apply -f https://raw.githubusercontent.com/influxdata/docs-v2/master/static/downloads/influxdb-k8-minikube.yaml

#kubectl cluster-info
#docker ps

# Status of minikube
minikube status

# Launch of minikube dashboard
minikube dashboard