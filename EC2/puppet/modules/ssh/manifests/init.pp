# Class: ssh
#
#
class ssh {
	# resources
	package { 'openssh-server':
		ensure => installed,
	}

	file { '/etc/ssh/sshd_config':
		ensure  => file,
		owner   => 'root',
		require => Package['openssh-server'],
	}

	service { 'ssh':
		enable      => true,
		ensure      => running,
		subscribe   => File['/etc/ssh/sshd_config'],
		#hasrestart => true,
		#hasstatus  => true,
		#require    => Class["config"],
	}
}