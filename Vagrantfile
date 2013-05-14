Vagrant::Config.run do |config|

  # Use base ubuntu vagrant box
  config.vm.box = "precise32" 
  config.vm.box_url = "http://files.vagrantup.com/precise32.box" 

  config.vm.forward_port 6379, 6379
  config.vm.customize ["modifyvm", :id, "--memory", 1024]

  config.vm.provision :shell, :path => "init.sh"
end
