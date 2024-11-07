#!/usr/bin/env bash

set -ex

host=doc.flashduty.com

ACME=$HOME/.acme.sh/acme.sh

if [ ! -f "$ACME" ]; then
  curl https://get.acme.sh | sh -s email=i18n.site@gmail.com
fi

$ACME \
  --issue \
  --ecc \
  --reloadcmd "nginx -s reload" \
  --webroot /mnt/$host \
  -d $host \
  --days 30

chown www-data:www-data -R /root/.acme.sh
