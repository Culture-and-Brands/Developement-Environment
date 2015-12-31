# Class: ssh::sshfile
#
#
class ssh::sshfile {
	# resources

	file { '/etc/ssh/sshd_config':
		ensure  => file,
		source  => 'puppet:///modules/ssh/sshd_config',
		require => Package['openssh-server'],
		
	}

}