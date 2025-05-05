# Linux Commands in PowerShell

This project provides PowerShell equivalents of common Linux commands. Each command is implemented as a separate .ps1 file, maintaining similar functionality to the original Linux commands while leveraging PowerShell's capabilities.

## Available Commands

| Linux Command | PowerShell Equivalent | Description |
|---------------|------------------------|-------------|
| `ls` | `ls.ps1` | List directory contents |
| `cd` | `cd.ps1` | Change directory |
| `pwd` | `pwd.ps1` | Print working directory |
| `cat` | `cat.ps1` | Display file contents |
| `grep` | `grep.ps1` | Search text using patterns |
| `cp` | `cp.ps1` | Copy files and directories |
| `mv` | `mv.ps1` | Move/rename files and directories |
| `rm` | `rm.ps1` | Remove files or directories |
| `mkdir` | `mkdir.ps1` | Create directories |
| `touch` | `touch.ps1` | Create empty files or update timestamps |
| `echo` | `echo.ps1` | Display a line of text |
| `man` | `man.ps1` | Display help for commands |
| `find` | `find.ps1` | Search for files in a directory hierarchy |
| `head` | `head.ps1` | Output the first part of files |
| `tail` | `tail.ps1` | Output the last part of files |

Example: Creating Aliases in PowerShell Profile
Add the following to your PowerShell profile ($PROFILE):

# Create aliases for Linux commands
Set-Alias -Name cat -Value "$repoPath\cat.ps1"
Set-Alias -Name ls -Value "$repoPath\ls.ps1"
# Add other commands as needed

## Command Details and Usage

### ls.ps1
Lists directory contents, similar to PowerShell's `Get-ChildItem`.
```powershell
.\ls.ps1 [path]
.\ls.ps1 -l  # Detailed list format
.\ls.ps1 -a  # Show hidden files
```

### cd.ps1
Changes the current directory.
```powershell
.\cd.ps1 [path]
.\cd.ps1 ~    # Navigate to home directory
```

### pwd.ps1
Displays the current working directory.
```powershell
.\pwd.ps1
```

### cat.ps1
Displays the contents of files.
```powershell
.\cat.ps1 file.txt
.\cat.ps1 file1.txt file2.txt  # View multiple files
.\cat.ps1 -n file.txt          # Show line numbers
```

### grep.ps1
Searches for patterns in text.
```powershell
.\grep.ps1 "pattern" file.txt
.\grep.ps1 -i "pattern" file.txt  # Case-insensitive search
.\grep.ps1 -n "pattern" file.txt  # Show line numbers
.\grep.ps1 -v "pattern" file.txt  # Invert match
Get-Content file.txt | .\grep.ps1 "pattern"  # Pipeline input
```

### cp.ps1
Copies files and directories.
```powershell
.\cp.ps1 source.txt destination.txt
.\cp.ps1 -r source_dir destination_dir  # Recursive copy
```

### mv.ps1
Moves or renames files and directories.
```powershell
.\mv.ps1 oldname.txt newname.txt
.\mv.ps1 file.txt directory/
```

### rm.ps1
Removes files or directories.
```powershell
.\rm.ps1 file.txt
.\rm.ps1 -r directory/  # Recursive delete
.\rm.ps1 -f file.txt    # Force delete without confirmation
```

### mkdir.ps1
Creates directories.
```powershell
.\mkdir.ps1 new_directory
.\mkdir.ps1 -p path/to/nested/directory  # Create parent directories
```

### touch.ps1
Creates empty files or updates timestamps of existing files.
```powershell
.\touch.ps1 file.txt
.\touch.ps1 file1.txt file2.txt  # Create/update multiple files
```

### echo.ps1
Displays text.
```powershell
.\echo.ps1 Hello World
```

### head.ps1
Displays the first part of files.
```powershell
.\head.ps1 file.txt
.\head.ps1 file.txt 20  # Show first 20 lines
Get-Content file.txt | .\head.ps1  # Pipeline input
```

### tail.ps1
Displays the last part of files.
```powershell
.\tail.ps1 file.txt
.\tail.ps1 file.txt 20  # Show last 20 lines
Get-Content file.txt | .\tail.ps1  # Pipeline input
```

### find.ps1
Searches for files in a directory hierarchy.
```powershell
.\find.ps1 . "*.txt"
.\find.ps1 /path/to/search "file*" -type -t f  # Find only files
.\find.ps1 /path/to/search "dir*" -type -t d   # Find only directories
```

### man.ps1
Displays help information for commands.
```powershell
.\man.ps1 ls
.\man.ps1 Get-Process  # Works with native PowerShell commands too
```

## Installation

1. Clone this repository or download the script files
2. Place the scripts in a directory of your choice
3. (Optional) Add the directory to your PATH to use the commands from anywhere

## Extending Functionality

Feel free to enhance these scripts with additional functionality to more closely match their Linux counterparts. Pull requests are welcome!

License
This project is open source. Feel free to use, modify, and distribute as needed.

Notes
These implementations focus on the most common use cases and may not support all options available in the original Linux commands
Commands are designed to be intuitive for Linux users while still working within PowerShell's paradigms '@

Contributing
Contributions are welcome! Feel free to:

Implement additional Linux commands
Enhance existing implementations with more options/features
Fix bugs or improve performance
Enhance documentation

## Note
These scripts are designed to provide familiar Linux command syntax for PowerShell users. While they mimic basic Linux command functionality, they may not implement all options available in the original commands.

This README provides a comprehensive overview of the PowerShell-Linux repository, explaining its purpose, how to use the commands, and how to set up the environment for optimal use. It also includes information on contributing to the project and notes about the scope of the implementations.