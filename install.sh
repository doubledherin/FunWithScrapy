#!/usr/bin/env bash

DB_USER=vagrant
DB_NAME=scrape

# sudo apt-get update

sudo apt-get install git -y
sudo apt-get install build-essential -y 


sudo apt-get install libssl-dev -y 
sudo apt-get install libffi-dev -y
sudo apt-get install libxml2-dev libxslt-dev python-dev zlib1g-dev -y

sudo apt-get install python-dev -y
sudo apt-get install python-virtualenv -y

sudo apt-get install postgresql-client -y
sudo apt-get install postgresql postgresql-contrib -y
sudo apt-get install libpq-dev -y

virtualenv venv
source venv/bin/activate

pip install scrapy -y
pip install SQLAlchemy -y
pip install psycopg2

sudo -u postgres createuser -P $DB_USER
sudo -u postgres createdb -O $DB_USER $DB_NAME
