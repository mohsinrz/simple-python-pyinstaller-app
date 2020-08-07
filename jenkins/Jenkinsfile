pipeline {
    agent none 
    stages {
        stage('Build') { 
            agent {
                docker {
                    image 'alpine:latest' 
                }
            }
            steps {
                sh """
                    apk update && apk add terraform && apk add bash
                    terraform init
                    terraform apply -auto-approve
                """
            }
        }
    }
}
