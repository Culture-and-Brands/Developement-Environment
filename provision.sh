apt-get -qqy update
apt-get -qqy install postgresql python-psycopg2
apt-get -qqy install python-flask python-sqlalchemy
apt-get install libffi-dev
 apt-get install python-dev
apt-get -qqy install python-pip


pip install Flask-SQLAlchemy
pip install sqlalchemy-utils
pip install bleach
pip install oauth2client
pip install requests
pip install httplib2
pip install passlib
pip install itsdangerous
pip install flask-httpauth
pip install flask-bcrypt
pip install Werkzeug
pip install Flask-WTF
pip install WTForms
pip install flask-login




su postgres -c 'createuser -dRS culture'
su culture -c 'createdb'
su culture -c 'createdb cultures'

