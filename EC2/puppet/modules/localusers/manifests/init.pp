# Class: localusers
#

#
class localusers {
	# resources
	user { 'hamza':
	  comment    => 'Admin guy',
	  home       => '/home/hamza',
	  ensure     => present,
	  groups     => 'sudo',
	  shell      => '/bin/bash',
	  managehome => true,
	}

	ssh_authorized_key {'secret-key':
	  user   => 'hamza',
	  ensure => present,
	  type   => 'ssh-rsa',
	  }


}