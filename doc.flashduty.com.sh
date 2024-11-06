#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex

cd /mnt/doc.flashduty.com
git fetch --all && git reset --hard origin/main
