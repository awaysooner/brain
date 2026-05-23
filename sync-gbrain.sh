#!/bin/zsh
echo "=== Syncing GBrain ==="
cd /Users/menggoh/Developer/gbrain || { echo "GBrain source not found"; exit 1; }
bun run src/cli.ts sync --repo ~/brain
echo "=== Sync complete ==="