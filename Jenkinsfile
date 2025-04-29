pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/Grandhechaithu/weather-track-dashboard.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def app = docker.build('climatrack-dashboard')
                }
            }
        }

        stage('Deploy') {
            steps {
                echo "Deploying the Docker container..."
                script {
                    docker.image('climatrack-dashboard').run('-d -p 8087:80')
                }
            }
        }
    }

    post {
        failure {
            echo 'Deployment failed.'
        }
    }
}
