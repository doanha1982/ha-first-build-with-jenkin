pipeline {
    agent any
    tools {nodejs 'nodejs'}
    stages {
        stage('Preparation step'){
            steps{
                echo 'You may do something before building source code'
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