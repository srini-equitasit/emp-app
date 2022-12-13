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

## EC2 k8s (install minikube), install minikube in bare metal on EC2 instace -don't install hello world node , it will not work
https://plainenglish.io/blog/running-kubernetes-using-minikube-cluster-on-the-aws-cloud

## enable commands for sudo user
https://superuser.com/questions/927512/how-to-set-path-for-sudo-commands
https://unix.stackexchange.com/questions/8656/usr-bin-vs-usr-local-bin-on-linux


## POD architecture
https://kubernetes.io/docs/tutorials/kubernetes-basics/expose/expose-intro/


## EC2 working
https://stackoverflow.com/questions/74122626/minikube-kubernetes-pending-pod-on-aws-ec2

## install docker on amazon ec2 linux
https://www.cyberciti.biz/faq/how-to-install-docker-on-amazon-linux-2/

## create EKS using terraform
https://developer.hashicorp.com/terraform/tutorials/kubernetes/eks


## install docker using terraform
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli

## fix the issue for alpha1 version
sed -i -e "s,client.authentication.k8s.io/v1alpha1,client.authentication.k8s.io/v1beta1,g" ~/.kube/config
https://gist.github.com/Zheaoli/335bba0ad0e49a214c61cbaaa1b20306