# Class: apache::apachedir
#
#
class apache::apachedir {
	# resources

	file { '/var/www':
		ensure  => directory,
		recurse => true,
		require => Package['apache2'],
	}
}