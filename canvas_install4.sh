bash
#Este paso configura la base de datos de postgres
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/psql.sh | bash
#Este paso instala Canvas LMS
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/inscanvas.sh | bash
#este paso llena la base de datos de canva
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/pdb.sh | bash
#Este paso configura la instalación de Canvas RCE
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/rce.sh | bash
#Este paso es la postconfiguración de Canvas RCE
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/eco.sh | bash
#Este paso configura la configuración posterior de apache
curl -o- https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/extras/apch.sh  | bash
#bajar el ultimo script para terminar
wget https://raw.githubusercontent.com/Kraken-Digital-Labs/canvas-lms/master/canvas_install5.sh | bash
sh canvas_install5.sh
