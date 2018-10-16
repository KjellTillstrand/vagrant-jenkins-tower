
## vagrant-jenkins-towe


I've been doing quite a lot of tests trying to make my ansible tower instance as stateless as possible by provisioning it via Jenkins pipelines. I'm sharing my test environment here.


### Requirements
You need to have vagrant and virtualbox installed.


### How to run it.

run vagrant up

After i while all container should be up and running.

#### Jenkins
URL: http://192.168.33.10:8080/

Login
user: admin
password: password

##### todos
* Add GitLab credentials


#### Tower

URL: https://192.168.33.10

Login
user: admin
password: password 

Get a lisence file from redhat and save it in the vagrant folder as tower-licence.json and add the following line  `"eula_accepted": true

##### todos
* In prouction Tower instance Oragnizations, Teams and Users are defined in AD/LDAP. For testing we'll populate the tower from a yml definition and a playbook.


#### Gitlab

URL: http://192.168.33.10:9090

Login
User: root
passoword: password

To create an access token run the following after the GiLab instance is up and running. (takes a minute)
vagrant ssh -c "sudo docker exec -ti vagrant_gitlab_1 gitlab-rails r "\""token = PersonalAccessToken.new(user: User.where(id: 1).first, name: 'temp token', token: 'token-1', scopes: ['api','read_user','sudo']); token.save"\"" '!'"

##### todos
* Set up Group and repo
