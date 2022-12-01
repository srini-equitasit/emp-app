echo 'clean up existing  pods and services '

kubectl delete -f ../emp-ui-app-service.deployment.yml

kubectl delete -f ../emp-service.deployment.yml

kubectl delete -f ../db/mysql-db-service.deployment.yml

kubectl delete -f ../config/emp-app.secret.config.yml

kubectl delete -f ../config/emp-app.config.yml