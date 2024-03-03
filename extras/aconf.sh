bash
cd /var/canvas/
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/canvas.conf
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/canvas-ssl.conf
sudo mv canvas.conf /etc/apache2/sites-available/
sudo mv canvas-ssl.conf /etc/apache2/sites-available/
sudo mv passenger.conf /etc/apache2/mods-available/passenger.conf
