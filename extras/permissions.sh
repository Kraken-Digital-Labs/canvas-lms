current_user=$(whoami)
sudo adduser --disabled-password --gecos canvas canvasuser
cd /var/canvas
sudo chown -R "$current_user":"$current_user" .
sudo find config/ -type f -exec chmod 400 {} +
sudo chown "$current_user" config/*.yml
sudo chmod 400 config/*.yml
ls -l
