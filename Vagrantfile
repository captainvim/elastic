# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/xenial64"

  config.vm.define "es" do |elastic|
    elastic.vm.hostname="globo-es01"
    elastic.vm.network "private_network", ip: "192.168.20.100"
    elastic.vm.network "public_network", bridge: "en0: Wi-Fi (AirPort)"
    elastic.vm.synced_folder ".", "/vagrant_data"
    elastic.vm.provider "virtualbox" do |v|
      v.memory = 2048
    end
  end
  
  config.vm.define "logstash" do |logstash|
    logstash.vm.hostname="globo-logstash01"
    logstash.vm.network "private_network", ip: "192.168.20.101"
    logstash.vm.network "public_network", bridge: "en0: Wi-Fi (AirPort)"
    logstash.vm.synced_folder ".", "/vagrant_data"
    logstash.vm.provider "virtualbox" do |v|
      v.memory = 1024
    end
  end

  config.vm.define "kibana" do |kibana|
    kibana.vm.hostname="globo-kibana01"
    kibana.vm.network "private_network", ip: "192.168.20.103"
    kibana.vm.network "public_network", bridge: "en0: Wi-Fi (AirPort)"
    kibana.vm.synced_folder ".", "/vagrant_data"
    kibana.vm.provider "virtualbox" do |v|
      v.memory = 1024
    end
  end

end

