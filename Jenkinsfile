pipeline {
    agent any

    stages {
        stage('Build Jenkins Image') {
            steps {
                echo 'Starting the build'
                sh "/usr/bin/docker build -t amritase/jenkins-rbac:v$BUILD_NUMBER ."
                sh "/usr/bin/docker push amritase/jenkins-rbac:v$BUILD_NUMBER"
                echo 'image built and pushed to dockerhub'
            }
        }
        stage('Deploy Image') {
            steps {
                echo "Deploying the Image"
                sh "sed -i s/jenkins-rbac/jenkins-rbac:v$BUILD_NUMBER/g ./k8s-manifest/jenkins-deployment.yaml"
                sh "kubectl apply -f ./k8s-manifest"
                echo 'Image Deployed'
                sh "kubectl get svc -o wide"
            }
        }
    }
}

