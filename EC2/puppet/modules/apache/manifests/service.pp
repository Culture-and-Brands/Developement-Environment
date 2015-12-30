# Class: apache::service
#
#
class apache::service {
	# resources

	service { 'apache2':
		enable      => true,
		ensure      => running,
		require     => Package['apache2'],
		subscribe   => File['/var/www'],
		#hasrestart => true,
		#hasstatus  => true,
		#require    => Class["config"],
	}
}