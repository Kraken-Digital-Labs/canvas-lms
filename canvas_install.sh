#!/bin/bash
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/hst.sh
sudo sh hst.sh
#curl -o ubuntu_22-04_canvas_install.sh https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/canvas_install.sh
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/basic.sh | bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/keys.sh | bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/srvr.sh | bash
