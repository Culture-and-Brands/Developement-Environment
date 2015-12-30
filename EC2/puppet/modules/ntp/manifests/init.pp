# Class: ntp
#
#
class ntp {
	# resources

	package { 'ntp':
		ensure => installed,
	}
}