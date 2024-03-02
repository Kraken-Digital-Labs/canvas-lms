echo "Type your FQDN"
read -p "Username: " fqdnx
export FQDNX="$fqdnx"
hostnamectl set-hostname $fqdnx
source ~/.bashrc
echo $FQNX
#hostnamectl set-hostname lms.paisdelconocimiento.org
