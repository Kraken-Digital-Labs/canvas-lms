#Este paso crea las variables que seran necesarias para ejecutar canvas lms
cd /var/canvas/
current_user=$(whoami)
sudo chown -R "$current_user":"$current_user" .
sudo chmod -R u=rwx,go=rx
cd /var/canvas/config/environments/
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/config/environments/production-local.rb
cd /var/canvas/config/
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/config/database.yml
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/config/security.yml
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/config/redis.yml
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/config/outgoing_mail.yml
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/config/external_migration.yml
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/config/dynamic_settings.yml
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/config/domain.yml
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/config/cache_store.yml
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/canvas.conf
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/canvas-ssl.conf
sudo mv canvas.conf /etc/apache2/sites-available/
sudo mv canvas-ssl.conf /etc/apache2/sites-available/
