#!/bin/bash

# Importante: Debes asegurarte de tener instalado el comando 'swaks' en tu sistema.
# Puedes instalarlo en sistemas basados en Debian/Ubuntu con 'sudo apt-get install swaks'.

# Variables de configuración SMTP
HOST='smtp1.s.ipzmarketing.com'
PORT=587
USERNAME='nqgkdgvqyxme'
PASSWORD='geeNcptXJxI'
FROM='juan.villa@paisdelconocimiento.org'
TO='juan.villa@paisdelconocimiento.org'

# Mensaje de prueba
SUBJECT="This is SMTP test please don't spam me"
BODY="This is the test and I know who I am <b>Juan Villa!</b>"

# Verificar la configuración SMTP utilizando swaks
swaks --to "$TO" \
      --from "$FROM" \
      --server "$HOST" \
      --port "$PORT" \
      --auth \
      --auth-user "$USERNAME" \
      --auth-password "$PASSWORD" \
      --tls \
      --header "Subject: $SUBJECT" \
      --body "$BODY"

# Verificar el estado de salida de swaks
if [ $? -eq 0 ]; then
    echo "Configuración SMTP verificada correctamente. El mensaje se envió con éxito."
else
    echo "Error al verificar la configuración SMTP. No se pudo enviar el mensaje."
fi
