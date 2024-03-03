sudo sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" /etc/postgresql/16/main/postgresql.conf
sudo sed -i '/^host/s/ident/md5/' /etc/postgresql/16/main/pg_hba.conf
sudo sed -i '/^local/s/peer/trust/' /etc/postgresql/16/main/pg_hba.conf
echo "host all all 0.0.0.0/0 md5" | sudo tee -a /etc/postgresql/16/main/pg_hba.conf
sudo systemctl start postgresql
sudo systemctl enable postgresql
sudo -u postgres createuser $USER --no-createdb --no-superuser --no-createrole --pwprompt
sudo -u postgres createdb canvas_production --owner=canvas
sudo -u postgres psql -c "alter user $USER with superuser" postgres
