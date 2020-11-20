# Michael Giraldo

# Enable minikube addons 
minikube addons enable metallb
minikube addons enable metrics-server
minikube addons enable dashboard

# Start minikube
minikube start

# Status of minikube
minikube status

# https://minikube.sigs.k8s.io/docs/commands/docker-env/
# use the docker daemon from minikube
# eval $(minikube docker-env)

# https://minikube.sigs.k8s.io/docs/commands/docker-env/
# To point your shell to minikube's docker-daemon, run:
eval $(minikube -p minikube docker-env)


# Run a kubectl binary matching the cluster version
# https://minikube.sigs.k8s.io/docs/commands/kubectl/
# minikube kubectl


#build custom Alpine base image
docker build --tag ft_alpine:telegraf -f srcs/alpine/dockerfile .
docker build --tag ft_nginx -f srcs/nginx/dockerfile .
docker build --tag ft_wordpess -f srcs/wordpess/dockerfile .
docker build --tag ft_phpmyadmin -f srcs/phpmyadmin/dockerfile .
docker build --tag ft_mysql -f srcs/mysql/dockerfile .
docker build --tag ft_ftps -f srcs/ftps/dockerfile .



#apply yaml sources from kustomization file
kubectl apply -k srcs/nginx

#build custom Alpine images
#docker build --tag ft_influxdb:v2.0.0-rc.4 -f srcs/influxdb/dockerfile .
#docker build --tag ft_ftps src/ftps mg


#kubectl apply -f https://raw.githubusercontent.com/influxdata/docs-v2/master/static/downloads/influxdb-k8-minikube.yaml


kubectl cluster-info
docker ps