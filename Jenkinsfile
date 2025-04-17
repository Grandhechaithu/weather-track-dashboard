pipeline {
    agent any

    stages {
        stage('Clone') {
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

        stage('Run with Docker Compose') {
            steps {
                sh 'docker-compose down'
                sh 'docker-compose up -d --build'
            }
        }
    }
}
