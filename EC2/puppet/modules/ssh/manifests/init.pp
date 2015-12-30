# Class: ssh
#
#
class ssh {
	# resources
	package { 'openssh-server':
		ensure => installed,
	}

	include ssh::sshfile
	include ssh::service
}