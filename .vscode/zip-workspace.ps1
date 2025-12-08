$ErrorActionPreference = "Stop"
$root = $args[0]
$name = Split-Path -Leaf $root
$zip = Join-Path $root "$name.zip"

if (Test-Path $zip) {
    Remove-Item $zip -Force
}

# Use .NET compression for better Minecraft compatibility
Add-Type -Assembly System.IO.Compression.FileSystem
$compressionLevel = [System.IO.Compression.CompressionLevel]::Optimal

$zipArchive = [System.IO.Compression.ZipFile]::Open($zip, 'Create')
try {
    Get-ChildItem -Path $root -Recurse -File | Where-Object { 
        $_.Extension -ne ".zip" -and $_.FullName -notlike "*\.vscode\*"
    } | ForEach-Object {
        $relativePath = $_.FullName.Substring($root.Length + 1).Replace('\', '/')
        [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zipArchive, $_.FullName, $relativePath, $compressionLevel) | Out-Null
    }
} finally {
    $zipArchive.Dispose()
}

Write-Host "Created $zip"
