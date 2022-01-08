# vagrant-ansible by Mounir C

<b> <p> Vagrant File </p> </b>

Creates 4 VMs:
- server1 (Ubuntu Linux Webserver with private IP 192.168.10.101/24)
- server2 (Ubuntu Linux Linux Webserver with private IP 192.168.10.102/24)
- server3 (Ubuntu Linux Linux Database with private IP 192.168.10.103/24)
- ansible (Ubuntu Linux VM with Ansible installed and with private IP 192.168.10.104/24)

<b> <p> Provision map </p> </b>

Includes the following files:
- bootstrap-ansible.sh (Installs Ansible, copies the private keys of server1-3 and a premade hosts file for ansible)
- bootstrap-server.sh (Updates the servers)
- hosts (premade hosts file that contains the IPs of the servers, location of the copied private key for every server and the provided username)
- installapache.yml (Ansible Playbook file that installs Apache2 on all 3 servers)
- removeapache.yml (Ansible Playbook file that uninstalls Apache2 on all 3 servers)
- roles (folder) (Ansible Role that installs and configures Apache2 and PHP on the webservers, and installs and configures MySQL on the database server)
- role.yml (Ansible Playbook file that runs the Ansible Role)
