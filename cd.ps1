param(
    [Parameter(Position=0, ValueFromPipeline=$true)]
    [string]$Path = "~"
)

# Resolve home directory if ~ is specified
if ($Path -eq "~") {
    $Path = $HOME
}

# Change directory
try {
    Set-Location -Path $Path -ErrorAction Stop
}
catch {
    Write-Error "cd: $_"
}