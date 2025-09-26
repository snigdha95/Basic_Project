pipeline {
  agent any
  stages {
    stage('Build') {
      steps {
        sh 'mvn clean package'
      }
    }
    stage('Docker Build') {
      steps {
        script {
          dockerImage = docker.build("yourusername/dummy-web:${env.BUILD_NUMBER}")
        }
      }
    }
    stage('Docker Run') {
      steps {
        sh 'docker run -p 8080:8080 yourusername/dummy-web:${env.BUILD_NUMBER}'
      }
    }
  }
}
