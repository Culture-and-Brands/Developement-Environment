# Class: packages
#
#

class packages {

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

	$pipinstalls = [
		"Flask-SQLAlchemy",
		"sqlalchemy-utils",
		"bleach",
		"oauth2client",
		"requests",
		"httplib2",
		"passlib",
		"itsdangerous",
		"flask-httpauth",
		"Werkzeug",
		"Flask-WTF",
		"WTForms",
		"arrow",
		"flask-login",
		"virtualenv",
		"flask-bcrypt"
	]
	# resources
	package { 'python-pip':
		ensure => installed,
	}

	package { $installations:
		ensure  => installed,
		require => Package['python-pip'],
	}


	package { $pipinstalls:
		ensure   => installed,
		provider => 'pip',
		require  => [Package['python-pip'], Package[$installations]],
	}
}