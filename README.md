# vagrant-ansible door Mounir Challouk

<b> <p> Vagrant Bestand </p> </b>

Maakt 4 VMs aan:
- server1 (Webserver met private IP 192.168.10.101)
- server2 (Webserver met private IP 192.168.10.102)
- server3 (Database met private IP 192.168.10.103)
- ansible (VM met Ansible geïnstalleerd met met private IP 192.168.10.104)

<b> <p> Provision map </p> </b>

Bevat de volgende bestanden:
- bootstrap-ansible.sh (installeerd ansible, kopieert de private keys van server1-3 en een vooraf gemaakt hosts bestand voor ansible)
- bootstrap-server.sh (update de servers)
- hosts (vooraf aangemaakte hosts file met daarin de IPs van de servers, locatie van de gekopieerde private key voor elke server en de meegegeven username)
- installapache.yml (Ansible Playbook bestand dat Apache2 installeerd op alle 3 servers)
- removeapache.yml (Ansible Playbook bestand dat Apache2 verwijderd op alle 3 servers)
- roles (folder) (Ansible Role dat Apache2 en PHP installeert op de webservers, en MySQL installeert op de database machine)
- role.yml (Ansible Playbook bestand dat de Ansible Role uitvoert
