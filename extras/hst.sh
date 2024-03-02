echo "Type your FQDN"
read -p "Username: " fqdnx
$FQDNX=$fqdnx
export FQDN="$FQDNX"
hostnamectl set-hostname $fqdnx
#hostnamectl set-hostname lms.paisdelconocimiento.org
