kubectl apply -f ../config/emp-app.secret.config.yml

kubectl apply -f ../config/emp-app.config.yml

kubectl apply -f ../db/mysql-8.yml

# kubectl apply -f emp-service.deployment.yml

# kubectl apply -f emp-ui-app-service.deployment.yml