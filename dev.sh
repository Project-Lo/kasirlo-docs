#!/usr/bin/env bash
# Jalankan preview lokal Mintlify di bawah Node 22.
# Mintlify menolak Node >= 25; sistem ini memakai Node 26.
set -euo pipefail

MINTLIFY=""
for p in "$(pwd)/node_modules/mintlify" "$HOME/.npm/_npx"/*/node_modules/mintlify; do
  if [ -f "$p/index.js" ]; then
    MINTLIFY="$p"
    break
  fi
done

if [ -z "$MINTLIFY" ]; then
  echo "Paket mintlify tidak ditemukan. Jalankan: npm install mintlify" >&2
  exit 1
fi

echo "Mintlify: $MINTLIFY"
exec npx --yes node@22 "$MINTLIFY/index.js" dev "$@"
