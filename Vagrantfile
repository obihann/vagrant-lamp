# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise64"

  config.vm.network "private_network", type: "dhcp" 

  config.vm.synced_folder "www", "/var/www", create: true

  config.vm.provision "shell", path: "https://gist.githubusercontent.com/obihann/cc92955cc198b0601bb9a0bebadf4851/raw/f1eed92f15168baeb021dac28eac781dc2f3b151/upgrade_puppet.sh"

  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
  end

  config.push.define "atlas" do |push|
    push.app = "obihann/lamp"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.gui = true
    vb.memory = "1024"
    vb.name = "lamp"
  end
end
