node {

    checkout scm

    tools {
        docker 'docker'
    }

    docker.withRegistry('https://registry.hub.docker.com', 'docker') {

        def customImage = docker.build("doanmanhsonha/build-with-jenkins")

        /* Push the container to the custom Registry */
        customImage.push()
    }
}