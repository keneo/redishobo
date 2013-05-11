Vagrant::Config.run do |config|
  config.vm.box = "lucid32"

  # THE URL FROM WHERE THE 'CONFIG.VM.BOX' BOX WILL BE FETCHED IF IT
  # DOESN'T ALREADY EXIST ON THE USER'S SYSTEM.
  config.vm.box_url = "http://files.vagrantup.com/lucid32.box"
  config.vm.forward_port 6379, 6379
  config.vm.customize ["modifyvm", :id, "--memory", 1024]

  config.vm.provision :shell, :path => "init.sh"
end
