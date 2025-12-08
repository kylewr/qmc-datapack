$ErrorActionPreference = "Stop"
$root = $args[0]
$name = Split-Path -Leaf $root
$zip = Join-Path $root "$name.zip"

if (-not (Test-Path $zip)) {
    throw "Zip not found: $zip. Run 'Zip workspace' first."
}

# Replace with your server details: user@hostname:/path/
Write-Host "Uploading $zip..."
scp -v $zip crafty@192.168.1.11:/opt/crafty-controller/crafty/crafty-4/servers/9ace48de-2d8e-4eaa-b699-3ebc4d88a582/world/datapacks/
if ($LASTEXITCODE -eq 0) {
    Write-Host "Successfully uploaded $zip"
} else {
    Write-Host "Upload failed with exit code $LASTEXITCODE" -ForegroundColor Red
    exit $LASTEXITCODE
}
