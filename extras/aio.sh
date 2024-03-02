export vnd="18.0.0"
export vrb="3.1.0"
export vyr="1.19.1-1"
nvm install v$vnd
nvm use v$vnd
nvm alias default v$vnd
npm install -g npm@latest
rvm install $vrb
rvm use $vrb --default
gem install rails --version $vrb
sudo gem install bundler
sudo apt install -y yarn=$vyr
sudo npm -g install yarn
#sudo reboot
