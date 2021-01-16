pipeline {
    agent any

    stages {
        stage('Build Jenkins Image') {
            steps {
                echo 'Starting the build'
                sh 'docker build -t amritase/jenkins-rbac .'
                sh 'docker push amritase/jenkins-rbac'
                echo 'image built and pushed to dockerhub'
            }
        }
    }
}

