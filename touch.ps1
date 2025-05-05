param(
    [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
    [string[]]$Path
)

foreach ($file in $Path) {
    if (Test-Path $file) {
        # Update timestamp
        (Get-Item $file).LastWriteTime = Get-Date
    } else {
        # Create new empty file
        New-Item -Path $file -ItemType File | Out-Null
    }
}