pipeline{
  agent any
  stages {
    stage('Checkout GitHub repo') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/raihan50017/my-app.git']])
            }
        }
    stage('Build Docker Image and Container') {
            steps {
                script {
                    sh 'docker build . -t khokon-portfolio'
                    sh 'docker stop khokon || true' 
                    sh 'docker rm khokon || true'
                    sh 'docker run -d -p 8092:3000 --name khokon khokon-portfolio'
                }
            }
        }
  }
}
