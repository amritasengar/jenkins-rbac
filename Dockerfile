FROM amritase/jenkins
#RUN /bin/bash -c "[ -f /var/jenkins_home/plugins/role-strategy.jpi ] || jenkins-plugin-cli --plugins role-strategy:3.1"
RUN #!/bin/bash; [[ -f /var/jenkins_home/plugins/role-strategy.jpi ]] || jenkins-plugin-cli --plugins role-strategy:3.1 
#RUN #!/bin/bash if [[ ! -f /var/jenkins_home/plugins/role-strategy.jpi ]]; then jenkins-plugin-cli --plugins role-strategy:3.1; fi 
USER jenkins

