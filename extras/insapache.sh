sudo add-apt-repository -y ppa:ondrej/apache2
sudo apt-get update
sudo apt-get install -y apache2
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7
curl https://oss-binaries.phusionpassenger.com/auto-software-signing-gpg-key.txt | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/phusion.gpg >/dev/null
sudo sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger jammy main > /etc/apt/sources.list.d/passenger.list'
sudo apt-get update
sudo apt install -y libapache2-mod-passenger libapache2-mod-xsendfile
sudo a2enmod proxy_http rewrite passenger ssl
sudo apache2ctl restart
sudo systemctl restart apache2
