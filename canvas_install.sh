#!/bin/bash
bash
#Dar permisos al usuario
sudo usermod -aG sudo $USER
# Este paso cambia la configuración del servidor
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/hst.sh
sudo sh hst.sh
# Este paso cambia la configuración del servidor creandole una swap para mayor rendimiento
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/swp.sh | bash
# Este paso instala el ambiente basico para instalar las aplicaciones que necesitamos
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/basic.sh | bash
# Este paso instala las llaves de las aplicaciones que necesitamos para instalar las aplicaciones que necesitamos
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/keys.sh | bash
# Esta paso instala las aplicaciones servidor que vamos a utilizar
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/srvr.sh | bash
# Este paso descarga el instalador que necesitamos para realizar el paso 2
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/canvas_install2.sh
# Algunas aplicaciones necesitan reinicio es obligatorio así que vamos a reiniciar
# si no se realiza este paso podrian no funcionar algunas funcionalidades
echo "Reboot the system & then run canvas_install2.sh"
sudo reboot
