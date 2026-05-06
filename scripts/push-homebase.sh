#!/usr/bin/env bash
# Push standalone CID_HomeBase. Run from plumber-pdf-backend root.
set -e
HB="${GITHUB_ROOT:-$HOME/GitHub}/CID_HomeBase"
cd "$HB"
git add -A
git diff --cached --quiet && echo "Nothing to commit" && exit 0
git commit -m "${1:-Update templates}"
git push
