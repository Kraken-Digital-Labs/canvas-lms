bash
sudo service apache2 restart
sudo usermod -aG www-data $USER
sudo apt update
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/passgr.sh | bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/ssl.sh | bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/cronjob.sh | bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/ulink.sh | bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/e2essslc.sh | bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/mods.sh | bash
sudo service apache2 restart
sudo apache2ctl configtest
sudo apachectl -M | sort
