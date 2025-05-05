param(
    [Parameter(Position=0, ValueFromRemainingArguments=$true)]
    [string[]]$Text
)

if ($Text) {
    Write-Output ($Text -join " ")
} else {
    Write-Output ""
}