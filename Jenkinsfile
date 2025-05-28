pipeline {
    agent any

    environment {
        IMAGE_NAME = 'flask-webapp'
        CONTAINER_NAME = 'flask-webapp-container'
        APP_PORT = '5000'
    }

    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'main', url: 'https://github.com/abhijeetg1/flask-webapp.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE_NAME .'
            }
        }

        stage('Stop Old Container') {
            steps {
                sh '''
                    docker stop $CONTAINER_NAME || true
                    docker rm $CONTAINER_NAME || true
                '''
            }
        }

        stage('Run Container') {
            steps {
                sh 'docker run -d --name $CONTAINER_NAME -p $APP_PORT:$APP_PORT $IMAGE_NAME'
            }
        }
    }
}

