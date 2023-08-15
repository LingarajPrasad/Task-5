pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                git 'https://github.com/LingarajPrasad/Task-5.git'
            }
        }
        stage('exp') {
            steps {
                script {
                    withCredentials([aws(accessKeyVariable:'AWS_ACCESS_KEY_ID',credentialsId:'awsacceskey',secretKeyVariable:'AWS_SECRET_ACCESS_KEY')]){
                        sh "terraform init"
                        sh "terraform ${action} --auto-approve"
                    }
                }
            }
        }
    }
}

