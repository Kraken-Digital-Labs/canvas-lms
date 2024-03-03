bash
#Este paso crea un archivo swap para aumentar el rendimiento de la maquina
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/swp.sh | bash
#Este paso instala las aplicaciones que seran necesarias para ejecutar canvas lms
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/aio.sh | bash
#Este paso verfica las aplicaciones que seran necesarias para ejecutar canvas lms
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/vrs.sh | bash
#Este paso descarga el siguiente script necesario para descargar canvas y sus valores canvas lms
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/canvas_install3.sh
echo "Reboot the system & then run canvas_install3.sh"
#reiniciamos para que se puedan tomar los cambios
sudo reboot
