Vagrant.configure(2) do |config|
	config.vm.box = "ubuntu/trusty32"
	config.vm.network "forwarded_port", guest: 8000, host: 8000
	config.vm.network "forwarded_port", guest: 8080, host: 8080
	config.vm.network "forwarded_port", guest: 5000, host: 5000

	config.vm.provision "shell", path: "https://github.com/Culture-and-Brands/Developement-Environment/blob/master/provision.sh"

	#config.vm.synched_folder  "/Users/nuru/Desktop/", "/website"
end
