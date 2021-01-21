#!/bin/bash
echo 'Install Node.js'
sudo apt update
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc
nvm list-remote
echo 'Ingrese la version de node a instalar'
read version
nvm install $version
sudo apt install npm
echo 'ok!!!'
sleep 10
clear

echo 'Install Docker and Docker Compose'
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker.io
sudo usermod -aG docker ${USER}
su - ${USER}
id -nG
echo 'ingresa el usuario'
read username
sudo usermod -aG docker $username
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose -v
docker -v
node -v
npm -v
