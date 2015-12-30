# Class: apache
#
#
class apache {
	# resources
	package { 'apache2':
		ensure => installed,
	}

	include apache::service
	include apache::apachedir
	include apache::www

}