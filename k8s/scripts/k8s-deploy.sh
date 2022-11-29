export AWS_ACCOUNT_ID="337901474843"

export AWS_DEFAULT_REGION="us-east-1"

echo 'login into ECR'

aws ecr get-login-password --region ${AWS_DEFAULT_REGION} | docker login --username AWS --password-stdin ${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com

echo 'clean up existing  pods and services'

kubectl delete -f ../config/emp-app.secret.config.yml

kubectl delete -f ../config/emp-app.config.yml

kubectl delete -f ../db/mysql-db-service.deployment.yml

kubectl delete -f ../emp-service.deployment.yml

kubectl delete -f ../emp-ui-app-service.deployment.yml

echo 'applying pods and services existing  pods'

kubectl apply -f ../config/emp-app.secret.config.yml

kubectl apply -f ../config/emp-app.config.yml

kubectl apply -f ../db/mysql-db-service.deployment.yml

kubectl apply -f emp-service.deployment.yml

kubectl apply -f emp-ui-app-service.deployment.yml