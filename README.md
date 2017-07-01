# Reinstalling a new laptop

##1. Base setup

Download and run prereq.sh.

This will install the basics, pull the repo, then create SSH keys.

##2. SSH key to repos

Add the contents of `/home/dtsomp/.ssh/id_rsa.pub` to your private repositories.

##3. Further installation

    # Configure basic tools (mutt, vim, etc)
    ansible-playbook config.yml 

    # Set up development tools (puppet, vagrant, virtualbox)
    ansible-playbook dev.yml -K

    # Set up network tools (nmap, tcpdump, wireshark)
    ansible-playbook net.yml -K

    # Set up desktop utils and programs (Firefox, OpenVPN, etc)
    ansible-playbook desktop.yml -K
