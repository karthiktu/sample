node {
    checkout scm

    docker.withTool('mydocker'){

        docker.withRegistry('https://registry.hub.docker.com', 'dockerHub'){

            def customImage = docker.build("tukarthik/express-helloworld:${env.BUILD_ID}")

            customImage.push()
        }
    }
}