# Reinstalling a new laptop

## About

This is my handy way of provisioning Debian systems for personal use.

Given that I plan to use this on multiple type of systems (work laptops, home laptops, Raspberry Pis, servers...), I have split tasks into different roles.
This way I can mix and match, depending on my needs on each system.
The one constant thing is the use of Debian.
I might add Ubuntu support later, but... meh.

Available roles:

- debian: Configure Debian repositories for apt. 
- console-tools: Tools I use on the console. I install these everywhere.
- console-personal: cli tools for personal use (like Mutt). I don't want these on servers.
- desktop: Install desktop stuff like Firefox, Chromium, etc.
- dev: Day-to-day dev work tools (Virtualbox, Vagrant, Puppet, etc)
- network-tools: Network troubleshooting (nmap, tcpdump, etc)

## Usage

Install the minimum requirements:

    sudo apt-get install git ansible

Check out this repo:

    git clone https://github.com/dtsomp/provision.git

Edit provision.yml:
- comment/uncomment roles according to needs
- update the variables if needed

Dry-run to check for errors:

    ansible-playbook provision.yml -K --check

If all is well, run it:

    ansbile-playbook provision.yml -K

Congrats, you have succesfully provisioned your system.
