pipeline {
    agent {
        docker {
            image 'node:6-alpine'
            args '-p 3000:3000'
        }
    }
     stages {
         stage('build') {
             steps {
                 echo 'Building...'
                 sh 'npm install'
             }
         }
         stage('test') {
             steps {
                 echo 'Testing...'
             }
         }
         stage('deploy') {
             steps {
                 echo 'Deploying...'
             }
         }
     }
}