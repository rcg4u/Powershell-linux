param(
    [Parameter(Position=0, ValueFromPipeline=$true)]
    [string]$Path,
    
    [Parameter(Position=1)]
    [int]$n = 10  # Number of lines
)

if (Test-Path $Path -PathType Leaf) {
    Get-Content $Path -Tail $n
} elseif ($input) {
    $lines = @($input)
    $lines | Select-Object -Last $n
} else {
    Write-Error "tail: No input file specified"
}