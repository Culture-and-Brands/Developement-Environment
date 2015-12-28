# Class: apache
#
#
class apache {
	# resources
	package { 'apache2':
		ensure => installed,
	}

	service { 'apache2':
		enable      => true,
		ensure      => running,
		#hasrestart => true,
		#hasstatus  => true,
		require     => Package["apache2"],
	}

	vcsrepo {'/var/www/GotRoom':
		ensure   => latest,
		provider => git,
		source   => 'git://github.com/CruzanCaramele/GotRoom',
		revision => 'PostgreSql',
		require  => Package['apache2'],
		notify   => Service['apache2'],
	}
}