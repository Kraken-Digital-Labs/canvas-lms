echo "Type your FQDN"
read -p "Username: " fqdnx
export $FQDN="$fqdnx"
hostnamectl set-hostname $fqdnx
#hostnamectl set-hostname lms.paisdelconocimiento.org
