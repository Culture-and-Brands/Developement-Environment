apt-get -qqy update

apt-get -qqy install bleach
apt-get -qqy install passlib
apt-get -qqy install httplib2
apt-get -qqy install requests
apt-get -qqy install python-pip
apt-get -qqy install oauth2client
apt-get -qqy install itsdangerous
apt-get -qqy python-flask python-sqlalchemy
apt-get -qqy install postgresql python-psycopg2
apt-get -qqy flask-httpauth

su postgres -c 'createuser -dRS culture'
su culture -c 'createdb'
su culture -c 'createdb cultures'

