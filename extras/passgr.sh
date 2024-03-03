sudo apt-get install -y libapache2-mod-passenger
sudo a2enmod passenger
sudo service apache2 restart
sudo /usr/bin/passenger-config validate-install
sudo /usr/sbin/passenger-memory-stats
