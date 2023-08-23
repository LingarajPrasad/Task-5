pipeline {
    agent any
    tools {
        terraform 'terraform'
    }
    stages {
        stage('Git Checkout') {
            steps {
                git 'https://github.com/LingarajPrasad/Task-5.git'
            }
        }
        stage('Terraform') {
            steps {
                script {
                    withCredentials([aws(accessKeyVariable:'AWS_ACCESS_KEY_ID',credentialsId:'awsacceskey',secretKeyVariable:'AWS_SECRET_ACCESS_KEY')]){
                        sh "terraform init"
                        sh "terraform plan"
                        sh "terraform ${action} --auto-approve"
                    }
                }
            }
        }
    }
}

