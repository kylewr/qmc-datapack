#!/bin/bash
set -e

root="$1"
name=$(basename "$root")
zip="$root/$name.zip"

# Remove existing zip if it exists
if [ -f "$zip" ]; then
    rm -f "$zip"
fi

# Create zip excluding .vscode directory and any existing zip files
cd "$root"
zip -r "$name.zip" . -x "*.zip" ".vscode/*" ".git/*"

echo "Created $zip"
