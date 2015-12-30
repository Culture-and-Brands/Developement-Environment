# Class: ssh::sshfile
#
#
class ssh::sshfile {
	# resources

	file { '/etc/ssh/sshd_config':
		ensure  => file,
		require => Package['openssh-server'],
		
	}

}