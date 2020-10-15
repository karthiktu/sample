pipeline{

    agent any

    stages {

        stage('Checkout Source'){
            steps{
                checkout scm
            }
        }

        stage('Create Image'){
            steps{
                script{
                    image = docker.build("tukarthik/express-helloworld:${env.BUILD_ID}")
                }
            }
        }

        stage('Push Image'){
            steps{
                script{
                    docker.withRegistry('https://registry.hub.docker.com', 'dockerHub'){
                        image.push()
                    }
                }
            }
        }
    }
}