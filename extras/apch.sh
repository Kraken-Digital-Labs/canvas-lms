bash
sudo apt-get install -y libapache2-mod-passenger
sudo usermod -aG www-data $USER
sudo apt update
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/ssl.sh | bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/cronjob.sh | bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/ulink.sh | bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/e2essslc.sh | bash
sudo service apache2 restart
sudo a2enmod proxy_http
sudo service apache2 restart
sudo apachectl -M | sort
