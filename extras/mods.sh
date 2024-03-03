bash
sudo apt-get install libapache2-mod-xsendfile
sudo a2enmod ssl proxy_http xsendfile
sudo apachectl -M | sort
