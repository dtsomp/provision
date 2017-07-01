#!/bin/bash

# Swedish repo

sudo sed -i '/deb http:\/\/ftp.se.debian.org/d' /etc/apt/sources.list
sudo sed -i '/deb-src http:\/\/ftp.se.debian.org/d' /etc/apt/sources.list

echo "deb http://ftp.se.debian.org/debian/ stretch main contrib non-free" | sudo tee /etc/apt/sources.list.d/stretch.list
echo "deb-src http://ftp.se.debian.org/debian/ stretch main contrib non-free" | sudo tee -a /etc/apt/sources.list.d/stretch.list

sudo apt-get update
# sudo apt-get upgrade
sudo apt-get -yq install git ansible

ansible-playbook init.yml -K


sleep 5
cat << EOF 
Setup your keys in your repo, then run this: 
    ansible-playbook config.yml
    ansible-playbook net.yml -K
    ansible-playbook dev.yml -K
EOF
