param(
    [Parameter(ValueFromPipeline=$true, Position=0)]
    [string[]]$Path,
    
    [switch]$n  # Number lines
)

function Show-FileContent {
    param(
        [string]$FilePath,
        [bool]$NumberLines
    )
    
    if (Test-Path $FilePath) {
        try {
            $content = Get-Content $FilePath -ErrorAction Stop
            
            if ($NumberLines) {
                $lineNum = 0
                $content | ForEach-Object {
                    $lineNum++
                    "${lineNum}: $_"
                }
            } else {
                $content
            }
        }
        catch {
            Write-Error "cat: $_"
        }
    }
    else {
        Write-Error "cat: File not found: $FilePath"
    }
}

if (-not $Path -and -not $input) {
    Write-Error "cat: No file specified"
    exit 1
}

if ($Path) {
    foreach ($file in $Path) {
        Show-FileContent -FilePath $file -NumberLines $n
    }
}

if ($input) {
    $input | ForEach-Object { Show-FileContent -FilePath $_ -NumberLines $n }
}