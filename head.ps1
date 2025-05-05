param(
    [Parameter(Position=0, ValueFromPipeline=$true)]
    [string]$Path,
    
    [Parameter(Position=1)]
    [int]$n = 10  # Number of lines
)

if (Test-Path $Path -PathType Leaf) {
    Get-Content $Path -TotalCount $n
} elseif ($input) {
    $lines = @($input)
    $lines | Select-Object -First $n
} else {
    Write-Error "head: No input file specified"
}