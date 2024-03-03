bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/swp.sh | bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/aio.sh | bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/vrs.sh | bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/venvr.sh |bash
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/dxc.sh | bash

wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/canvas_install3.sh
echo "Reboot the system & then run canvas_install3.sh"
sudo reboot
