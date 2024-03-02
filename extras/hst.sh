echo "Type your FQDN"
read -p "Full Qualified Domain: " fqdnx
export FQDNX="$fqdnx"
hostnamectl set-hostname $fqdnx
source ~/.bashrc
echo $FQNX
#hostnamectl set-hostname lms.paisdelconocimiento.org
