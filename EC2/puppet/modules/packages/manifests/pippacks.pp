# Class: packages::pippacks
#
#
class packages::pippacks {
	

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

	package { $pipinstalls:
		ensure   => installed,
		provider => pip,
		require  => [Package[$installs], Package[$installations]],
	}

}