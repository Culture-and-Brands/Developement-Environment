apt-get update -y

apt-get  install python-pip
apt-get  python-flask python-sqlalchemy
apt-get  flask-httpauth
apt-get  install postgresql python-psycopg2
apt-get  install passlib
apt-get  install httplib2
apt-get  install requests
apt-get  install oauth2client
apt-get  install itsdangerous



su postgres -c 'createuser -dRS culture'
su culture -c 'createdb'
su culture -c 'createdb cultures'

