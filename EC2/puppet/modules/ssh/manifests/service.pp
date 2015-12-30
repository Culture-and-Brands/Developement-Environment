# Class: ssh::service
#
#
class ssh::service {
	# resources

	service { 'ssh':
		enable      => true,
		ensure      => running,
		require     => Package['openssh-server'],
		subscribe   => File['/etc/ssh/sshd_config'],
		#hasrestart => true,
		#hasstatus  => true,
		#require    => Class["config"],
	}

}