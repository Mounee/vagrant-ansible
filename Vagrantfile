
Vagrant.configure("2") do |config|

    (1..3).each do |i|
        config.vm.define "server#{i}" do |server|
        server.vm.box = "ubuntu/groovy64"
        server.vm.hostname = "server#{i}"

        server.vm.provision :shell, path: "provision/bootstrap-server.sh"
        server.vm.network :private_network, ip: "192.168.10.10#{i}", virtualbox__intnet: "mynetwork"
        server.vm.network :forwarded_port, guest: 80, host: "1800#{i}"
        server.vm.network :forwarded_port, guest: 22, host: "1012#{i}", id: "ssh"

        server.vm.provider "virtualbox" do |v|
            v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
            v.customize ["modifyvm", :id, "--memory", 1024]
            v.customize ["modifyvm", :id, "--name", "webserver-#{i}"]
            end
        end
    end

    config.vm.define "ansible" do |ansible|
        ansible.vm.box = "ubuntu/groovy64"
        ansible.vm.provision :shell, path: "provision/bootstrap-ansible.sh"
        ansible.vm.network :private_network, ip: "192.168.10.104", virtualbox__intnet: "mynetwork"
        ansible.vm.network :forwarded_port, guest: 22, host: "10124", id: "ssh"
        ansible.vm.provider "virtualbox" do |v|
            v.name="ansible"
            v.memory=512
            v.cpus=2
        end
    end
end