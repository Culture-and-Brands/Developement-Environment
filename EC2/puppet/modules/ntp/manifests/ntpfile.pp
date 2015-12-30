# Class: ntp::ntpfile
#
#
class ntp::ntpfile {
	# resources
	file { '/etc/ntp.conf':
		ensure  => file,
		require => Package['ntp'],
		
	}
}