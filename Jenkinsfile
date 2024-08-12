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
                    sh 'docker build . -t my-app'
                    sh 'docker rmi something'
                    sh 'docker run -it -p 3000:3000 --name something my-app'
                }
            }
        }
  }
}
