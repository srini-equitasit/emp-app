pipeline {
  agent any
  environment {
      AWS_ACCOUNT_ID="337901474843"
      AWS_DEFAULT_REGION="us-east-1"
      IMAGE_REPO_NAME="equitas-it"
      IMAGE_TAG="emp-ui-app"
      // IMAGE_TAG="emp-ui-app_${env.BUILD_ID}"
      REPOSITORY_URI = "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_DEFAULT_REGION}.amazonaws.com/${IMAGE_REPO_NAME}"
  }


  stages {

   stage ('Initialize') {
        steps {
            sh '''
                echo "PATH = ${PATH}"
            '''
        }
    }



   stage('stop all the containers') {
      steps {
      	script{
      	 sh "docker-compose down"
      	}
      }
    }



    stage ('Deploy containers') {
      steps {

        sh "docker-compose up --detach"
      }
    }

    stage ('verify container status') {
      steps {
        sh "docker-compose ps"
      }
    }



  }
}
