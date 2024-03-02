echo "Type your FQDN"
read -p "Username: " fqdn
export $FQDN="$fqdn"
hostnamectl set-hostname $fqdn
#hostnamectl set-hostname lms.paisdelconocimiento.org
