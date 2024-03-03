cd /var/canvas/canvas-rce-api
cp .env.example .env
ECOSYSTEM_SECRET=$(openssl rand -hex 32)
ECOSYSTEM_KEY=$(openssl rand -hex 32)
CIPHER_PASSWORD=$(openssl rand -hex 16)
sed -i "s/^\(NODE_ENV=\).*/\1production/; s/^\(ECOSYSTEM_SECRET=\).*/\1$ECOSYSTEM_SECRET/; s/^\(ECOSYSTEM_KEY=\).*/\1$ECOSYSTEM_KEY/; s/^\(CIPHER_PASSWORD=\).*/\1$CIPHER_PASSWORD/" .env
