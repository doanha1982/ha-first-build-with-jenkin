pipeline {
    agent any
     stages {
         stage('build') {
             steps {
                 echo 'Building...'
                 bat 'npm install'
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