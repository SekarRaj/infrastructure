#!/bin/bash

# sudo apt-get remove docker docker-engine docker.io containerd runc

sudo apt-get -y update

sudo apt-get -y install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get -y update

sudo apt-get -y install docker-ce docker-ce-cli containerd.io

# docker pull nginx
# docker pull jenkins
# docker pull owasp/sonarqube
# docker pull docker.bintray.io/jfrog/artifactory-oss
