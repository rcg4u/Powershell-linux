param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$Source,
    
    [Parameter(Mandatory=$true, Position=1)]
    [string]$Destination
)

try {
    Move-Item -Path $Source -Destination $Destination -ErrorAction Stop
}
catch {
    Write-Error "mv: $_"
}