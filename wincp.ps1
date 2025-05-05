param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$Source,
    
    [Parameter(Mandatory=$true, Position=1)]
    [string]$Destination,
    
    [switch]$r  # Recursive copy
)

try {
    $copyParams = @{
        Path = $Source
        Destination = $Destination
        ErrorAction = "Stop"
    }
    
    if ($r) {
        $copyParams.Add("Recurse", $true)
    }
    
    Copy-Item @copyParams
}
catch {
    Write-Error "cp: $_"
}