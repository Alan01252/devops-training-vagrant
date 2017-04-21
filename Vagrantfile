# -*- mode: ruby -*-
# vi: set ft=ruby :
#
required_plugins = %w( vagrant-vbguest)
required_plugins.each do |plugin|
  system "vagrant plugin install #{plugin}" unless Vagrant.has_plugin? plugin
end

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.provider "virtualbox" do |vb|
     vb.memory = "2048"
  end

  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"

  config.vm.define "devops-training" do |web|
	web.vm.hostname = "devops-training"
	web.vm.network :private_network, ip: "192.168.100.100"
	web.vm.provision "ansible_local" do |ansible|
			ansible.install_mode = "pip"
			ansible.verbose = "v"
			ansible.playbook = "playbook.yml"
	 end
  end

end
