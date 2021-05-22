#! /bin/bash

##install jenkins
sudo yum install -y firewalld
sudo yum install -y wget
sudo yum install -y java-1.7.0-openjdk
sudo yum install -y ant
sudo yum install -y git
sudo yum install -y maven

sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install -y jenkins


sudo systemctl start jenkins
sudo systemctl start firewalld
sudo firewall-cmd --zone=public --add-port=8080/tcp --permanent
sudo firewall-cmd --reload



##install ansible
sudo yum install -y epel-release
sudo yum install -y ansible

##configure Maven local repo

sudo mkdir -p /mnt/artefact
sudo cd /mnt
sudo chown ec2-user:ec2-user artefact

sudo cp /usr/share/maven/conf/settings.xml ~/.m2/
sudo sed -i '49 i   <localRepository>/mnt/artefact</localRepository>' ~/.m2/settings.xml
