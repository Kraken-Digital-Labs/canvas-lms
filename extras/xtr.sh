cd /var/canvas/
current_user=$(whoami)
sudo chown -R "$current_user":"$current_user" .
echo "host all all 0.0.0.0/0 md5" | sudo tee -a /etc/postgresql/16/main/pg_hba.conf
sudo systemctl restart postgresql
sudo find config/ -type f -exec chmod 400 {} +
sudo chown $USER config/*.yml
sudo chmod 400 config/*.yml
ls -l
