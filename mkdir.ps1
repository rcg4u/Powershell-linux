param(
    [Parameter(Mandatory=$true, Position=0, ValueFromPipeline=$true)]
    [string[]]$Path,
    
    [switch]$p  # Create parent directories
)

foreach ($dir in $Path) {
    try {
        $mkdirParams = @{
            Path = $dir
            ItemType = "Directory"
            ErrorAction = "Stop"
        }
        
        if ($p) {
            $mkdirParams.Add("Force", $true)
        }
        
        New-Item @mkdirParams | Out-Null
    }
    catch {
        Write-Error "mkdir: $_"
    }
}