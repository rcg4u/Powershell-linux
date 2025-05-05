param(
    [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
    [string[]]$Path,
    
    [switch]$r,  # Recursive
    [switch]$f   # Force
)

$removeParams = @{
    Path = $Path
    ErrorAction = if ($f) { "SilentlyContinue" } else { "Stop" }
}

if ($r) {
    $removeParams.Add("Recurse", $true)
}

try {
    Remove-Item @removeParams
}
catch {
    Write-Error "rm: $_"
}