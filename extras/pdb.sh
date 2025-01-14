bash
cd /var/canvas
bundle config set --local path vendor/bundle
bundle install
yarn gulp rev
RAILS_ENV=production bundle exec rake db:initial_setup
mv db/migrate/20210823222355_change_immersive_reader_allowed_on_to_on.rb .
mv db/migrate/20210812210129_add_singleton_column.rb db/migrate/20111111214311_add_singleton_column.rb
yarn gulp rev
RAILS_ENV=production bundle exec rake db:initial_setup
mv 20210823222355_change_immersive_reader_allowed_on_to_on.rb db/migrate/.
RAILS_ENV=production bundle exec rake db:migrate
cd /var/canvas
mkdir -p log tmp/pids public/assets app/stylesheets/brandable_css_brands
touch app/stylesheets/_brandable_variables_defaults_autogenerated.scss
touch Gemfile.lock
touch log/production.log
sudo chown -R $USER log/production.log config/environment.rb log tmp public/assets app/stylesheets/_brandable_variables_defaults_autogenerated.scss app/stylesheets/brandable_css_brands public/dist/brandable_css  Gemfile.lock config.ru
RAILS_ENV=production bundle exec rake db:reset_encryption_key_hash
RAILS_ENV=production bundle exec rake canvas:compile_assets
chown -R $USER public/dist/brandable_css
chown -R $USER public/dist/brandable_css
sudo chown $USER config/*.yml
chmod 400 config/*.yml
#sudo RAILS_ENV=production bundle exec rake brand_configs:generate_and_upload_all
