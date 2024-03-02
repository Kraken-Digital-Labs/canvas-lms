#!/bin/bash
bash
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/hst.sh
sudo sh hst.sh
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/basic.sh | bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/keys.sh | bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/srvr.sh | bash
https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/canvas_install2.sh
echo "Reboot the system & then run canvas_install2.sh"
sudo reboot
