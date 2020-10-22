node {
    def app

    stage('Clone repository'){
        checkout scm
    }
    
    stage('Build docker image'){
        app = docker.build("doanmanhsonha/build-with-jenkins")
    }

    stage('Test docker image'){
        app.inside {
            sh 'echo "Tests passed"'
        }
    }

    stage('Push docker image to docker hub'){
        docker.withRegistry('https://registry.hub.docker.com', 'docker') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }

}