FROM jenkins/jenkins
RUN jenkins-plugin-cli --plugins role-strategy:3.1
USER jenkins
