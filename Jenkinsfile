stage('Build') {
  steps {
    bat 'mvn clean package'
  }
}
stage('Docker Run') {
  steps {
    bat 'docker run -p 8080:8080 yourusername/dummy-web:${env.BUILD_NUMBER}'
  }
}
