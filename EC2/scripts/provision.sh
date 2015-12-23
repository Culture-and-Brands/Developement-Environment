#!/bin/bash -eux

sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install postgresql python-psycopg2
sudo apt-get -y install python-flask python-sqlalchemy
sudo apt-get -y install libffi-dev
sudo apt-get -y install python-dev
sudo apt-get -y install python-pip


sudo pip install Flask-SQLAlchemy
sudo pip install sqlalchemy-utils
sudo pip install bleach
sudo pip install oauth2client
sudo pip install requests
sudo pip install httplib2
sudo pip install passlib
sudo pip install itsdangerous
sudo pip install flask-httpauth
sudo pip install flask-bcrypt
sudo pip install Werkzeug
sudo pip install Flask-WTF
sudo pip install WTForms
sudo pip install arrow
sudo pip install flask-login