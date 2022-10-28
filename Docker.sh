#!/bin/bash

##-------------This is a Docker engine installation  script on centos 7-------------
#Author:Vorke
#Date:10/26/2022

if [ $? -eq 0 ]
then
echo " Docker package installed successfully!!!"

elif

echo "Docker package did not install please double check "
fi

sudo yum remove docker docker-client docker-client-latest docker-common docker-latest docker-latest-logrotate docker-logrotate docker-engine
 sudo systemctl status docker

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

 sudo yum install docker-ce docker-ce-cli containerd.io

sudo systemctl start docker

sudo systemctl enable docker

sudo systemctl status docker
docker-ce.x86_64  3:18.09.1-3.el7                     docker-ce-stable
docker-ce.x86_64  3:18.09.0-3.el7                     docker-ce-stable
docker-ce.x86_64  18.06.1.ce-3.el7                    docker-ce-stable
docker-ce.x86_64  18.06.0.ce-3.el7                    docker-ce-stable
sudo yum install docker-ce-<VERSION_STRING> docker-ce-cli-<VERSION_STRING> containerd.io docker-compose-plugin

sudo docker run hello-world

echo "Docker installation was successfully on your centos"


#---------------start installation on ubuntu 18.04 OS---------#

sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

 echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/kyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \$(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo systemctl status docker

sudo systemctl start docker
sudo systemctl enable docker
sudo docker run hello-world

echo "Docker installation was successfully on your ubuntu 18.04"