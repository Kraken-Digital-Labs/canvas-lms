echo "Type your FQDN"
read -p 'Username: ' fqdn
hostnamectl set-hostname $fqdn
#hostnamectl set-hostname lms.paisdelconocimiento.org
