sudo wget -qO- http://www.webmin.com/jcameron-key.asc | sudo apt-key add -
sudo add-apt-repository "deb https://download.webmin.com/download/repository sarge contrib"
sudo apt update
sudo apt install -y webmin
sudo /usr/share/webmin/changepass.pl /etc/webmin/htusers <usuario>
sudo systemctl restart webmin
