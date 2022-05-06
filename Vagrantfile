# -*- mode: ruby -*-
# vi: set ft=ruby :

ENV['VAGRANT_DEFAULT_PROVIDER'] = 'libvirt'

Vagrant.configure("2") do |config|
    (1..4).each do |i|
        config.vm.define "docker-#{i}" do |docker|
            docker.vm.box = "generic/ubuntu2004"
            docker.vm.hostname = "docker-#{i}"
            docker.vm.provider :libvirt do |libvirt|
                libvirt.cpus = 2
                libvirt.memory = 2048
                libvirt.default_prefix = "docker_"
                libvirt.nested = true
            end
            docker.vm.provision "shell", path: "install_docker.sh"
        end
    end
end