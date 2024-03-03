bash
sudo apt-get install -y libapache2-mod-passenger
sudo usermod -aG www-data $USER
sudo apt update
sudo apt install python3-certbot-apache
sudo apt install certbot
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/cronjob.sh | bash
sudo unlink /etc/apache2/sites-enabled/000-default.conf
sudo unlink /etc/apache2/sites-enabled/000-default-ssl.conf
sudo a2ensite canvas.conf
sudo a2ensite canvas-ssl.conf
sudo service apache2 restart

sudo a2enmod proxy_http
sudo service apache2 restart
sudo apachectl -M | sort
