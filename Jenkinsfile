pipeline {
    agent any
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