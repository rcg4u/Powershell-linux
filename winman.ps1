param(
    [Parameter(Mandatory=$true, Position=0)]
    [string]$Command
)

# Try to get help for PowerShell commands first
try {
    Get-Help $Command -Full
}
catch {
    # If not a PowerShell command, check if it's one of our custom commands
    $customCommands = @{
        "ls" = "List directory contents (Get-ChildItem)"
        "cd" = "Change directory (Set-Location)"
        "pwd" = "Print working directory (Get-Location)"
        "cat" = "Display file contents (Get-Content)"
        "grep" = "Search text using patterns"
        "cp" = "Copy files and directories (Copy-Item)"
        "mv" = "Move/rename files and directories (Move-Item)"
        "rm" = "Remove files or directories (Remove-Item)"
        "mkdir" = "Create directories (New-Item -ItemType Directory)"
        "touch" = "Create empty files or update timestamps"
        "echo" = "Display a line of text (Write-Output)"
        "head" = "Output the first part of files"
        "tail" = "Output the last part of files"
        "find" = "Search for files in a directory hierarchy"
    }
    
    if ($customCommands.ContainsKey($Command)) {
        Write-Output "NAME"
        Write-Output "    $Command - $($customCommands[$Command])"
        Write-Output ""
        Write-Output "SYNOPSIS"
        Write-Output "    PowerShell implementation of the Unix '$Command' command"
    } else {
        Write-Error "man: No manual entry for $Command"
    }
}