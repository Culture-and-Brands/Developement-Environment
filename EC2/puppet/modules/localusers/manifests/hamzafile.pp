# Class: localusers::hamzafile
#
#
class localusers::hamzafile {
	# resources
	file { '/etc/sudoers.d/hamza':
		ensure  => file,
		owner   => 'hamza',
		source  => 'puppet:///modules/localusers/hamza',
	}
}