#Este paso llena la base de datos de postgres
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/psql.sh | bash
#Este paso llena la base de datos de postgres
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/psql.sh | bash
#Este paso instala Canvas LMS
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/inscanvas.sh | bash
#este paso llena la base de datos de canva
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/pdb.sh | bash
#Este paso configura la instalación de Canvas RCE

#Este paso es la postconfiguración de Canvas RCE

#Este paso configura la configuración posterior de apache

#bajar el ultimo script para terminar
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/canvas_install4.sh | bash
