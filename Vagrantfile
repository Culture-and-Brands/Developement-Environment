Vagrant.configure(2) do |config|
	config.vm.box = "ubuntu/trusty64"
	config.vm.network "forwarded_port", guest: 8000, host: 8000
	config.vm.network "forwarded_port", guest: 8080, host: 8080
	config.vm.network "forwarded_port", guest: 5000, host: 5000

	config.vm.synced_folder  "/Users/nuru/Desktop/", "/website"
	config.vm.provision "shell", path: "https://raw.githubusercontent.com/Culture-and-Brands/Developement-Environment/master/provision.sh"

	
end
