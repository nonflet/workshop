# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.ssh.insert_key = false

  config.vm.define "influxdb" do |db|
    db.vm.box = "ubuntu/trusty64"
    db.vm.network "private_network", ip: "192.168.50.64"
    db.vm.hostname = "db"
    db.vm.provider :virtualbox do |vb|
      vb.cpus = 2
      vb.customize ["modifyvm", :id, "--memory", 1024]
    end
  end

  hosts = ["192.168.50.16", "192.168.50.17", "192.168.50.18"]
  hosts.each.with_index(1) do |ip, i|
    config.vm.define "host-#{i}" do |h|
      h.vm.box = "ubuntu/trusty64"
      h.vm.network "private_network", ip: ip
      h.vm.hostname = "host-#{i}"
      h.vm.provider :virtualbox do |vb|
        vb.cpus = 2
      end
    end
  end
end
