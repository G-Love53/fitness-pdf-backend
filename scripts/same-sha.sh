#!/usr/bin/env bash
# Make backend's CID_HomeBase submodule match standalone (same SHA). Run from plumber-pdf-backend root.
set -e
cd "$(dirname "$0")/.."
cd CID_HomeBase
git fetch origin
git reset --hard origin/main
git clean -fd
cd ..
echo "CID_HomeBase now at $(cd CID_HomeBase && git rev-parse HEAD)"
