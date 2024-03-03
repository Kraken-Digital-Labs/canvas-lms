bash
sudo apt-get install -y libapache2-mod-passenger
sudo usermod -aG www-data $USER
sudo unlink /etc/apache2/sites-enabled/000-default.conf
sudo unlink /etc/apache2/sites-enabled/000-default-ssl.conf


sudo a2enmod proxy_http
sudo service apache2 restart
sudo apachectl -M | sort
