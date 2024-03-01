cd /var/canvas
git clone https://github.com/instructure/canvas-rce-api.git
cd canvas-rce-api
npm install --production
npm audit fix
