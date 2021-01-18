FROM amritase/jenkins-rs
RUN #!/bin/bash; [[ -f /var/jenkins_home/plugins/role-strategy.jpi ]] || jenkins-plugin-cli --plugins role-strategy:3.1 
USER jenkins

