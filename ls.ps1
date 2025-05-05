param(
    [Parameter(Position=0, ValueFromPipeline=$true)]
    [string]$Path = ".",
    [switch]$l,
    [switch]$a
)

$options = @{}
if ($l) { $options.Add("Format", "List") }
if ($a) { $options.Add("Force", $true) }

Get-ChildItem -Path $Path @options