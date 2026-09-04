#!/bin/bash
set -e

root="$1"
name=$(basename "$root")
zip="$root/$name.zip"

if [ ! -f "$zip" ]; then
    echo "Zip not found: $zip. Run 'Zip workspace' first."
    exit 1
fi

# Replace with your server details: user@hostname:/path/
echo "Uploading $zip..."
scp -v "$zip" crafty@100.73.184.119:/opt/crafty-controller/crafty/crafty-4/servers/da8dc662-a564-4126-a7b8-d46198c9a64b/world/datapacks/

if [ $? -eq 0 ]; then
    echo "Successfully uploaded $zip"
else
    echo "Upload failed with exit code $?"
    exit $?
fi
