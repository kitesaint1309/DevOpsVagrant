Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "hansvs"
  config.vm.network "forwarded_port", guest80, host: 8080
end
