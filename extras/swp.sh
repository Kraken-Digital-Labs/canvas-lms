sudo swapon --show
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
ls -hl /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
free -h
