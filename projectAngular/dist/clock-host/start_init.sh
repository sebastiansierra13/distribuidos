#!/bin/bash
chmod 644 /usr/share/nginx/html/assets/env.js
IPHOST=$(ip addr show eth0 | grep 'inet ' | awk '{print $2}' | cut -f1 -d'/')
echo "(function (window) {window['env'] = window['env'] || {};window['env']['API_URL'] = '$API_URL';  window['env']['HOSTNAME'] = '$HOSTNAME'; window['env']['IPHOST'] = '$IPHOST';window['env']['API_URL2'] = '$API_URL2';})(this);" > /usr/share/nginx/html/assets/env.js
