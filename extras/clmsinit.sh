sudo ln -s /var/canvas/script/canvas_init /etc/init.d/canvas_init
sudo update-rc.d canvas_init defaults
sudo /etc/init.d/canvas_init start
