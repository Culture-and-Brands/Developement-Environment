# Class: apache
#
#
class apache {
	# resources
	package { 'apache2':
		ensure => installed,
	}

	package { 'git':
		ensure => installed,
	}

	service { 'apache2':
		enable      => true,
		ensure      => running,
		#hasrestart => true,
		#hasstatus  => true,
		require     => Package["apache2"],
	}

}