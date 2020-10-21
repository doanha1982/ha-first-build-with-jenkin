pipeline {
    agent any
    tools {nodejs 'MY-NODE'}
    stages {
        stage('Pulling Source Code'){
            steps{
                git 'https://github.com/doanha1982/ha-first-build-with-jenkin.git'
            }
        }
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'npm install'
            }
        }
    }
}