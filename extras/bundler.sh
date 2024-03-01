cd /var/canvas
sudo gem install bundler -v 2.4.19
bundle config set --local path vendor/bundle
bundle install
#En caso de problema de dependecias correr
#sudo gem install bundler --version 2.4.19
#bundle config set --local path vendor/bundle
#sudo gem install bundler archive tempdir archive-tar-minitar rubocop brakeman reek
#sudo gem update --system
#bundle install --without sqlite mysql
