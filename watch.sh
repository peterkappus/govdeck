#!/usr/bin/env bash
set -euo pipefail
DOWNLOADS="$HOME/Downloads"; TARGET="$HOME/code/govdeck"; mkdir -p "$TARGET"; LAST_HASH=""
while true; do ZIPFILE=$(ls -t "$DOWNLOADS"/index*.zip 2>/dev/null|head -n1||true); if [[ -n "${ZIPFILE:-}" ]]; then HASH=$(shasum "$ZIPFILE"|awk '{print $1}'); if [[ "$HASH" != "$LAST_HASH" ]]; then TMPDIR=$(mktemp -d); unzip -oq "$ZIPFILE" -d "$TMPDIR"; rsync -av --exclude='.git' --exclude='content/*' --exclude='.DS_Store' "$TMPDIR"/ "$TARGET"/; rm -rf "$TMPDIR"; LAST_HASH="$HASH"; fi; fi; sleep 1; done
