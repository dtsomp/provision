#!/bin/bash

# Swedish repo

sudo sed -i '/deb http:\/\/ftp.se.debian.org/d' /etc/apt/sources.list
sudo sed -i '/deb-src http:\/\/ftp.se.debian.org/d' /etc/apt/sources.list

echo "deb http://ftp.se.debian.org/debian/ stretch main contrib non-free" | sudo tee /etc/apt/sources.list.d/stretch.list
echo "deb-src http://ftp.se.debian.org/debian/ stretch main contrib non-free" | sudo tee -a /etc/apt/sources.list.d/stretch.list

sudo apt-get update
# sudo apt-get upgrade
sudo apt-get -yq install git ansible

cat << EOF 

Now edit provision.yml:
- update the variables.
- comment out the roles that you don't want to run.

Once you're done, test the configuration with:

    ansible-playbook provision.yml -K --check

If everything's well, you can provision your system with:
    
    ansible-playbook provision.yml -K

EOF
