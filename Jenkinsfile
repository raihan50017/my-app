pipeline{
  agent any
  stages {
    stage('Checkout GitHub repo') {
            steps {
                checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/raihan50017/my-app.git']])
            }
        }
  }
}
