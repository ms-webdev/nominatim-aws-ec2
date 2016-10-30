#!/bin/sh

# Update/Upgrade apt-get
sudo apt-get clean
sudo apt-get update
sudo apt-get dist-upgrade

# Install all dependencies for Nominatim (Debian 8)
# http://wiki.openstreetmap.org/wiki/Nominatim/Installation
sudo apt-get install build-essential libxml2-dev libpq-dev libbz2-dev libtool automake libproj-dev libboost-dev libboost-system-dev libboost-filesystem-dev libboost-thread-dev libexpat-dev gcc proj-bin libgeos-c1 libgeos++-dev libexpat-dev php5 php-pear php5-pgsql php5-json php-db libapache2-mod-php5 postgresql postgis postgresql-contrib postgresql-9.4-postgis-2.1 postgresql-server-dev-9.4 wget


# Install osmosis
sudo apt-get install osmosis


# Install Nominatim-2.5.1
wget http://www.nominatim.org/release/Nominatim-2.5.1.tar.bz2
tar xvf Nominatim-2.5.1.tar.bz2

# build Nominatim - fixed (=> ignore: osm2pgsql build fail)
cd Nominatim-2.5.1
./configure
make

# admin als Nutzer hinzufügen !!! => nur so kann via admin auf psql zugegriffen werden
# sudo -u postgres createuser -s admin

# Setup Postgresql
sudo -u postgres psql -c "ALTER USER postgres PASSWORD '00000';"


# Zugriffsrechte HtmlDocPath setzen
sudo chown -R admin /var/www/html


# Set up the website
mkdir -m 755 /var/www/html/nominatim

# create website
./utils/setup.php --create-website /var/www/html/nominatim









