bash
#Este paso crea un archivo swap para aumentar el rendimiento de la maquina
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/swp.sh | bash
#Este paso crea las variables que seran necesarias para ejecutar canvas lms
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/venvr.sh |bash
#Este paso crea los archivos descargando todo el git que sera necesario para ejecutar canvas lms
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/dxc.sh | bash
#este paso permite descargar los archivos necesarios para terminar de configurar canvas
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/dld.sh |bash
#Este archivo descarga los pasos siguientes de la instalación
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/canvas_install4.sh
sh canvas_install4.sh
