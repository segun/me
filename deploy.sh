#!/usr/bin/env bash

set -euo pipefail

readonly remote="drawback-web01:/var/www/segun.me/"

rsync --archive --verbose --compress \
  --exclude '.DS_Store' \
  --exclude '.git/' \
  ./ "$remote"