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
		"python-pip",
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
		"flask-bcrypt",
		"Werkzeug",
		"Flask-WTF",
		"WTForms",
		"arrow",
		"flask-login",
		"virtualenv"
	]
	# resources
	package { '$installations':
		ensure => installed,
	}

	package { '$pipinstalls':
		ensure   => installed,
		provider => pip,
	}
}