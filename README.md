# emp-app

## dockerizing angular app
https://www.section.io/engineering-education/containerizing-an-angular-app-featuring-nginx-web-server-using-docker/

## enable k8s registery
https://minikube.sigs.k8s.io/docs/handbook/registry/

minikube addons list



## enable registery
minikube addons configure registry-creds

minikube addons enable registry-creds

##  docker registry url
https://registry.hub.docker.com

## mysql k8s
https://dev.to/musolemasu/deploy-a-mysql-database-server-in-kubernetes-static-dpc

https://dev.to/yoshiyukikato/tips-to-use-mysql-80-on-kubernetes-m3l

https://www.youtube.com/watch?v=pIPji3_rYPY

## connect k8s mysql
kubectl run -it --rm --image=mysql:5.6 --restart=Never mysql-client -- mysql -h mysql-service -p root

## login to shell
kubectl exec --stdin --tty mysql-546747ff76-7hm7h -- /bin/bash

## kubernates cheet sheet
https://kubernetes.io/docs/reference/kubectl/cheatsheet/

