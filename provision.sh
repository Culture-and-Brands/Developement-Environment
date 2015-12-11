apt-get -qqy update
apt-get -qqy install postgresql python-psycopg2
apt-get -qqy install python-flask python-sqlalchemy
apt-get -qqy install python-pip
pip install bleach
pip install oauth2client
pip install requests
pip install httplib2
pip install passlib
pip install itsdangerous
pip install flask-httpauth
pip install flask-bcrypt
pip install Werkzeug
pip install WTForms
pip install flask-login




su postgres -c 'createuser -dRS culture'
su culture -c 'createdb'
su culture -c 'createdb cultures'

