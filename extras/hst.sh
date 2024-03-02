echo "Type your FQDN"
read -p "Full Qualified Domain: " fqdnx
FQDNX=$fqdnx
export FQDNX="$fqdnx"
hostnamectl set-hostname $fqdnx
echo $FQDNX
#hostnamectl set-hostname lms.paisdelconocimiento.org
