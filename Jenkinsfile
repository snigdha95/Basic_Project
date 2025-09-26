pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                bat 'mvn clean package'
            }
        }
        stage('Docker Build') {
            steps {
                bat "docker build -t snigdhareddy06/dummy-web:${env.BUILD_NUMBER} ."
            }
        }
        stage('Docker Run') {
            steps {
                bat "docker run -d -p 8081:8080 snigdhareddy06/dummy-web:${env.BUILD_NUMBER}"
            }
        }
    }
}
