#!/bin/bash
set -euo pipefail

# Create a zip package of the KERDOMAX docs folder for download.
SRC="/Users/samdepoortere/.openclaw/workspace/kerdomax"
ZIP="$HOME/kerdomax_documents_package.zip"

if [ ! -d "$SRC" ]; then
  echo "Source directory not found: $SRC" >&2
  exit 1
fi

echo "Creating ZIP from $SRC -> $ZIP"
zip -r "$ZIP" "$SRC" >/dev/null

echo "Done. ZIP created at: $ZIP"
