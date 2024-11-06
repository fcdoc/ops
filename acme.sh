#!/usr/bin/env bash

if [ ! -d "$HOME/.acme.sh" ]; then
  curl https://get.acme.sh | sh -s email=i18n.site@gmail.com
fi

host=doc.flashduty.com

acme.sh --issue -d $host --webroot /mnt/$host
