pipeline {
	environment { 
        registry = "doanmanhsonha/build-with-jenkins" 
        registryCredential = 'dockerhub' 
        dockerImage = '' 
        node-version = 'nodejs-10-19-0'
    }
	agent any 
    stages { 
        stage('Cloning our Git') { 
            steps { 
                git 'https://github.com/doanha1982/ha-first-build-with-jenkin.git' 
            }
        } 
        stage('Building NodeJs app'){
            steps {
                nodejs(node-version) {
                    sh 'npm install'
                }
            }
        }
        stage('Building docker image') { 
            steps { 
                script { 
                    dockerImage = docker.build registry + ":$BUILD_NUMBER" 
                }
            } 
        }
        stage('Deploy our image') { 
            steps { 
                script { 
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
                    }
                } 
            }
        } 
        stage('Cleaning up') { 
            steps { 
                sh "docker rmi $registry:$BUILD_NUMBER" 
            }
        } 
    }
}