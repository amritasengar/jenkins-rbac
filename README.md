# Jenkins Role Strategy 
Jenkins Role Strategy is an implementation of the Role Strategy plugin to give role based access to users/groups in Jenkins. There are primarily 4 roles that has been created, Admin, Developer, Prod-Deployer, Deployer with minimalistic access rights. This project is build keeping minimalist access approach in mind.


## Toolset

1. Jenkins:  The CI server

2. Kubernetes(minikube): The intended application deployment platform.

3. Github: Source Control repo for the porject.

4. DockerHub: To store container images.

5. AWS: VMs for Jenkins and minikube

## Walkthrough

The project consists of the following files.

1. Jenkinsfile: Defines the outline of the pipeline with a build and deploy step.


2. Dockerfile: To build the docker image

3. K8s Manifest: Kubernetes yaml files to deploy the application.


## Installation and Setup
The Jenkins and minikube instances are running on a VM hosted in AWS, with a non-elastic IP. 

### Steps to deploy
To do the deploy of the image on the target minikube cluster:

1. Login into the Jenkins instance with username:amrita and password: amrita

2. Go the job  named "Jenkins-RBAC-Build" and click on `Build Now`. This will do the build of the image and deploy it on Minikube cluster.

3. The resultant deployed image can be accessed on the nodeport IP at <Instance-IP>:30007 with the username/passwoord as amrita/amrita

