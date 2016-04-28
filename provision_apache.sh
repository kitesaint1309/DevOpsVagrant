#!/usr/bin/env bash

apt-get update
apt-get install -y apache2

echo "install done!"

rm /etc/apache2/sites-enabled/000-default.conf

echo "apache2 config removed"

cp /vagrant/apache.conf /etc/apache2/sites-enabled/000-default.conf

echo "apache2 config copy"

rm -rf /var/www

echo "overbodige map weggehaald"

ln -s /vagrant/www /var

echo "config maken done"

service apache2 restart

echo "apache done"