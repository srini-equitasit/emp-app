echo 'clean up existing  pods and services'

kubectl delete -f emp-app.secret.config.yml

kubectl delete -f emp-app.config.yml

kubectl delete -f mysql-db-service.deployment.yml

kubectl delete -f emp-service.deployment.yml

kubectl delete -f emp-ui-app-service.deployment.yml
