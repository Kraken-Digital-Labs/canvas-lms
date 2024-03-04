sudo swapon --show
sudo fallocate -l 4G /swapfile
sudo chmod 600 /swapfile
ls -hl /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo sysctl vm.swappiness=100
sudo swapon --show
free -h
df -h
