# Class: localusers
#

#
class localusers {
	# resources
	user { 'hamza':
	  comment    => 'First Last',
	  home       => '/home/hamza',
	  ensure     => present,
	  shell      => '/bin/bash',
	  managehome => true,
	  #uid    => '501',
	  #gid    => '20'
	}

	file { '/etc/sudoers.d/hamza':
		ensure  => file,
		owner   => 'hamza',
		source  => 'puppet:///modules/localusers/hamza',
	}

}