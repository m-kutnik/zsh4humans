#!/usr/bin/env bash
set -euo pipefail

DEST="${HOME}/.cache/zsh4humans/v5/zsh4humans"
SRC="$(cd "$(dirname "$0")" && pwd)"

mkdir -p "$DEST"
rsync -a --delete --exclude='.git' "$SRC"/ "$DEST"/

echo "Installed to $DEST"
