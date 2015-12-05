apt-get update -y

apt-get  install python-pip -y
apt-get  python-flask python-sqlalchemy -y
apt-get  flask-httpauth -y
apt-get  install postgresql python-psycopg2 -y
apt-get  install passlib -y
apt-get  install httplib2 -y
apt-get  install requests -y
apt-get  install oauth2client -y
apt-get  install itsdangerous -y



su postgres -c 'createuser -dRS culture'
su culture -c 'createdb'
su culture -c 'createdb cultures'

