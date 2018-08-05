# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  config.vm.box = "bento/ubuntu-18.04"

  config.vm.network "forwarded_port", guest: 8080, host: 8080, auto_correct: true
  config.vm.network "forwarded_port", guest: 9090, host: 9090, auto_correct: true
  config.vm.network "forwarded_port", guest: 9091, host: 9091, auto_correct: true

  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "./docker", "/home/vagrant/docker"

  config.vm.provider "virtualbox" do |vb|
    vb.name = "docker_test"
    vb.memory = "2048"
    vb.cpus = "2"
  end

  config.vm.provision :itamae do |config|
    config.sudo = true
    # config.log_level = 'debug'
    config.recipes = ['./itamae/recipe.rb']
  end
end
