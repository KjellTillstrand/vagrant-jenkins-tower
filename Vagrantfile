# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "centos/7"

  config.vm.provider "virtualbox" do |v|
    v.memory = 4096
    v.cpus = 2
  end

  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.network "forwarded_port", guest: 443, host: 443
  config.vm.network "forwarded_port", guest: 9200, host: 9200
  config.vm.network "forwarded_port", guest: 9090, host: 9090
  config.vm.network "forwarded_port", guest: 2224, host: 2224
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.provision "shell", inline: <<-SHELL
     sudo yum install -y yum-utils device-mapper-persistent-data lvm2
     sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
     sudo yum-config-manager --enable docker-ce-edge
     sudo yum install -y docker-ce
     sudo systemctl start docker
     sudo yum -y install epel-release
     sudo yum install -y python-pip
     sudo pip install docker-compose
     sudo yum -y upgrade python*
     cd /vagrant
     sudo docker-compose up -d
     # This will not work as the tower instance is not fully running at this point in time. 
     # curl --user admin:password -vk POST https://192.168.33.10/api/v2/config/ -d @tower-license.json --header "Content-Type: application/json"
   SHELL
end
