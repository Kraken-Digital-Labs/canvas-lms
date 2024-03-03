cd /var/canvas/
current_user=$(whoami)
sudo chown -R "$current_user":"$current_user" .
echo "host all all 0.0.0.0/0 md5" | sudo tee -a /etc/postgresql/16/main/pg_hba.conf
sudo systemctl restart postgresql
touch .env
cat <<< "CANVAS_LMS_ADMIN_EMAIL=\"juan.villa@paisdelconocimiento.org\"
CANVAS_LMS_ADMIN_PASSWORD=\"CambiarmeAlEntrar.*\"
CANVAS_LMS_ACCOUNT_NAME=\"Juan Fernando Villa\"
CANVAS_LMS_STATS_COLLECTION=\"opt_in\"" > .env
ECOSYSTEM_SECRET=$(openssl rand -hex 32)
ECOSYSTEM_KEY=$(openssl rand -hex 32)
CIPHER_PASSWORD=$(openssl rand -hex 16)
sed -i "s/^\(NODE_ENV=\).*/\1production/; s/^\(ECOSYSTEM_SECRET=\).*/\1$ECOSYSTEM_SECRET/; s/^\(ECOSYSTEM_KEY=\).*/\1$ECOSYSTEM_KEY/; s/^\(CIPHER_PASSWORD=\).*/\1$CIPHER_PASSWORD/" .env
sudo find config/ -type f -exec chmod 400 {} +
sudo chown $USER config/*.yml
sudo chmod 400 config/*.yml
ls -l
