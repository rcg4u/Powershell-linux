param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$Pattern,
    
    [Parameter(Position=1, ValueFromPipeline=$true)]
    [string[]]$Path,
    
    [switch]$i,  # Case-insensitive
    [switch]$n,  # Show line numbers
    [switch]$v   # Invert match
)

$grepParams = @{
    Pattern = $Pattern
    CaseSensitive = !$i
}

if ($Path) {
    foreach ($file in $Path) {
        if (Test-Path $file -PathType Leaf) {
            $content = Get-Content $file
            $lineNum = 0
            
            foreach ($line in $content) {
                $lineNum++
                $matched = $line -match $Pattern
                
                if (($matched -and !$v) -or (!$matched -and $v)) {
                    if ($n) {
                        Write-Output "$file`:$lineNum`:$line"
                    } else {
                        Write-Output "$file`:$line"
                    }
                }
            }
        }
    }
} else {
    # Read from pipeline
    $input | ForEach-Object {
        $line = $_
        $matched = $line -match $Pattern
        
        if (($matched -and !$v) -or (!$matched -and $v)) {
            Write-Output $line
        }
    }
}