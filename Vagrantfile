Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.post_up_message = "Environment automated by Ehtesham Riazat"
  #change this, if you also change in manifests/site.pp  
  config.vm.hostname = "devphp.local"
  config.vm.network :private_network, ip: "192.168.56.111"

  config.vm.provider :virtualbox do |vb|
    vb.memory = "1024"
    vb.cpus = 2
    vb.customize [
      "modifyvm", :id,
      "--cpuexecutioncap", "80",
    ]
  end

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.manifest_file = "site.pp"
    puppet.module_path = "puppet/modules"
  end
end