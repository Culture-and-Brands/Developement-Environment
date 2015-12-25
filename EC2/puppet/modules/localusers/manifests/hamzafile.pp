# Class: localusers::hamzafile
#
#
class localusers::hamzafile {
	# resources
	file { '/etc/sudoers.d/hamza':
		ensure  => file,
		content => 'hamza ALL=(ALL) NOPASSWD:ALL'
	}
}