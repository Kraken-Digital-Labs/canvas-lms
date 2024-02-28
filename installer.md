#Instalador de Canvas



#Instalación de PostgresSQL
sudo apt-get install postgresql-12

sudo -u postgres createuser canvas --no-createdb --no-superuser --no-createrole --pwprompt

sudo -u postgres createdb canvas_production --owner=canvas

sudo -u postgres createdb canvas_development --owner=canvas

sudo -u postgres createuser $USER

sudo -u postgres psql -c "alter user $USER with superuser" postgres

#Instalación de Git

sudo apt-get install git-core

sudo apt-get install software-properties-common

#Instalación de Ruby

udo add-apt-repository ppa:instructure/ruby

sudo apt-get update

sudo apt-get install ruby3.1 ruby3.1-dev zlib1g-dev libxml2-dev libsqlite3-dev postgresql libpq-dev libxmlsec1-dev libidn11-dev curl make g++

#Instalación de Yarn

curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash; source ~/.bashrc; nvm install 18.1.0

curl -o- -L https://yarnpkg.com/install.sh | bash -s -- --version 1.19.1

sudo git clone https://github.com/instructure/canvas-lms.git canvas

current_user=$(whoami)


new_directory="/var"

cd "$new_directory"

sudo chown -R "$current_user":"$current_user" "$new_directory"/canvas

cd canvas

git checkout prod

for config in amazon_s3 database delayed_jobs domain file_store outgoing_mail security external_migration

do cp config/$config.yml.example config/$config.yml

cp config/database.yml.example config/database.yml; nano config/database.yml;

cp config/dynamic_settings.yml.example config/dynamic_settings.yml; nano config/dynamic_settings.yml;

cp config/outgoing_mail.yml.example config/outgoing_mail.yml; nano config/outgoing_mail.yml;

