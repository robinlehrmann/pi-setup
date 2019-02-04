# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
    config.vm.box       = 'debian/stretch64'
    config.vm.host_name = 'pi-setup.dev'
    config.ssh.forward_agent = true

    config.vm.network 'private_network', ip: '192.168.39.12', nic_type: "virtio"
    config.vm.synced_folder '.', '/srv/share', id: 'vagrant-share', :nfs => true
    config.vm.synced_folder '.', '/vagrant', active: false, nfs_export: false

    config.vm.provider :virtualbox do |virtualbox|
        virtualbox.customize ['modifyvm', :id, '--memory', 4096]
    end

    config.vm.provision 'ansible_local' do |ansible|
        ansible.install_mode      = 'pip'
        ansible.version           = "2.4.0.0"
        ansible.playbook          = 'site.yml'
        ansible.inventory_path    = 'inventory/devbox/hosts'
        ansible.limit             = 'devbox'
    end
end
