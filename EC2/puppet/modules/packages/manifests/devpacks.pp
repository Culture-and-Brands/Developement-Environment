# Class: packages::devpacks
#
#
class packages::devpacks {
	# resources

	$installations = [
		"python-setuptools",
		"libapache2-mod-wsgi",
		"python-flask",
		"python-sqlalchemy",
		"python-dev",
		"postgresql",
		"python-psycopg2",
		"libffi-dev"
	]

	package { $installations:
		ensure  => installed,
		require => Package[$installs],
	}

}