curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/nvm.sh
VND="18.0.0"
VRB="3.1.0"
VYR="1.19.1-1"
nvm install v$VND
nvm use v$VND
nvm alias default v$VND
npm install -g npm@latest
rvm install $VRB
rvm use $VRB --default
gem install rails --version $VRB
sudo gem install bundler
sudo apt install -y yarn=$VYR
sudo npm -g install yarn
#sudo reboot
