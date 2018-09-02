
## vagrant-jenkins-towe


I've been doing quite a lot of tests trying to make my ansible tower instance as stateless as possible by provisioning it via Jenkins pipelines. I'm sharing my test environment here.


### Requirements
You need to have vagrant and virtualbox installed.


### How to run it.

run vagrant up

After i while all container should be up and running.

#### Jenkins
URL: http://192.168.33.10:8080/

Get admin jenkins login key by running
`vagrant ssh -c 'sudo docker logs vagrant_jenkins_1; exit'`

##### todos
* Auto install plugins from file.
* Add GitLab credentials
*


#### Tower

URL: https://192.168.33.10

Get a lisence file from redhat and save it in the vagrant folder as tower-licence.json and add the following line  `"eula_accepted": true

##### todos
* In prouction Tower instance Oragnizations, Teams and Users are defined in AD/LDAP. For testing we'll populate the tower from a yml definition and a playbook.


#### Gitlab

URL: http://192.168.33.10:9090

##### todos
* Set up Group and repo
* It would be nice to be able to create an personal_accesss_token at container creating time and with that create groups, users and repos.
