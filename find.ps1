param(
    [Parameter(Position=0)]
    [string]$Path = ".",
    
    [Parameter(Position=1)]
    [string]$Name = "*",
    
    [switch]$type,
    [string]$t = ""  # f for files, d for directories
)

$findParams = @{
    Path = $Path
    Recurse = $true
}

if ($type -and $t -eq "f") {
    $findParams.Add("File", $true)
} elseif ($type -and $t -eq "d") {
    $findParams.Add("Directory", $true)
}

Get-ChildItem @findParams | Where-Object { $_.Name -like $Name } | ForEach-Object { $_.FullName }