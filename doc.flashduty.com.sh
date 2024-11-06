#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex

cd doc.flashduty.com
git fetch --all && git reset --hard origin/main