# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_plugin "vagrant-berkshelf"
Vagrant.require_plugin "vagrant-omnibus"

Vagrant.configure("2") do |config|
  config.vm.box     = "opscode_ubuntu-12.04_provisionerless"
  config.vm.box_url = "https://opscode-vm.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_provisionerless.box"

  config.vm.hostname = "glances-berkshelf"
  config.vm.network :private_network, ip: "33.33.33.10"

  config.berkshelf.enabled    = true
  config.omnibus.chef_version = :latest

  config.vm.provision :shell, :inline => "apt-get update"
  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      "recipe[glances::default]"
    ]
  end
end
