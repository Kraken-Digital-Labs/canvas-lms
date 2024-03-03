bash
cd /var/canvas/
git checkout prod
bundle config set --local path vendor/bundle
bundle install
sudo npm -g install yarn
yarn install --verbose
