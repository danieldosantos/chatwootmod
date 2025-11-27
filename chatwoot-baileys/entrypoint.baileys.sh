#!/usr/bin/env bash
set -e
echo "=== TuxTech Chatwoot + Baileys ==="
export RAILS_LOG_TO_STDOUT=true
if [ -x "/docker-entrypoint.sh" ]; then
  /docker-entrypoint.sh "$@"
else
  exec "$@"
fi
