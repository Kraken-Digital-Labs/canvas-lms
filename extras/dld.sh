#Este paso crea las variables que seran necesarias para ejecutar canvas lms
cd /var/canvas/
current_user=$(whoami)
sudo chown -R "$current_user":"$current_user" .
sudo chmod -R u=rwx,go=rx
cd /var/canvas/config/environments/
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/config/environments/production-local.rb
cd /var/canvas/config/
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/yml.sh | bash
sudo mv canvas.conf /etc/apache2/sites-available/
sudo mv canvas-ssl.conf /etc/apache2/sites-available/
