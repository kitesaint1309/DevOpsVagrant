apt-get update
apt-get upgrade -y
apt-get install php5 libapache2-mod-php5 -y

echo "install done"

rm /etc/apache2/mods-enabled/dir.conf

echo "php config removed"

cp /vagrant/phpconfig.conf /etc/apache2/mods-enabled/dir.conf

ehco "php config copy done"

service apache2 restart

echo "php done"