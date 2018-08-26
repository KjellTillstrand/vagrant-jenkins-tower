Setting up a vagrant env with docker containers for Jenkins and Ansible tower.


run vagrant up 

Get admin jenkins loging key by running
vagrant ssh -c 'sudo docker logs vagrant_jenkins_1; exit'

URL's
Jenkins:  http://192.168.33.10:8080/     
Ansible Tower: https://192.168.33.10:443/     
