pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Grandhechaithu/climatrack-dashboard.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('climatrack-dashboard')
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    docker.image('climatrack-dashboard').run('-p 8089:80')
                }
            }
        }
    }

    post {
        success {
            echo 'Deployment successful!'
        }
        failure {
            echo 'Deployment failed.'
        }
    }
}
