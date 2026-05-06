#!/usr/bin/env bash
# Sync submodule to same SHA as standalone, then push backend to Render. Run from plumber-pdf-backend root.
set -e
cd "$(dirname "$0")/.."
bash scripts/same-sha.sh
git add CID_HomeBase
git diff --cached --quiet && exit 0
git commit -m "Bump CID_HomeBase"
git push
