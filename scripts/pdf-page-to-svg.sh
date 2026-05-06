#!/usr/bin/env bash
# Run CID_HomeBase script; output goes to standalone when present.
set -e
cd "$(dirname "$0")/.."
HOMEBASE_SCRIPT="CID_HomeBase/scripts/pdf-page-to-svg.sh"
[[ ! -f "$HOMEBASE_SCRIPT" ]] && { echo "Error: $HOMEBASE_SCRIPT not found"; exit 1; }
STANDALONE="${GITHUB_ROOT:-$HOME/GitHub}/CID_HomeBase"
[[ -d "$STANDALONE" ]] && export CID_HOMEBASE_STANDALONE="$STANDALONE"
exec bash "$HOMEBASE_SCRIPT" "$@"
