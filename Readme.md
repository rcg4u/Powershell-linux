# PowerShell-Linux

A collection of PowerShell implementations of common Linux commands, making Linux-style command-line operations available in PowerShell environments.

## Description

PowerShell-Linux recreates familiar Linux commands using PowerShell, providing Windows users with the comfort and functionality of Linux-style commands without leaving the PowerShell environment. Each command is implemented as a PowerShell script that mimics the behavior and options of its Linux counterpart.

## Purpose

- Bridge the gap between Linux and Windows command-line experiences
- Help Linux users feel more at home in PowerShell environments
- Provide learning resources for users transitioning between platforms
- Demonstrate the flexibility and power of PowerShell scripting

## Features

- Linux-style command syntax with PowerShell implementation
- Support for common flags and options where applicable
- Comprehensive help documentation for each command
- Cross-platform compatibility where possible

## Current Scripts

Below is a list of all currently implemented scripts in this repository:

- `wincat.ps1`
- `wincd.ps1`
- `wincp.ps1`
- `winecho.ps1`
- `winfind.ps1`
- `wingrep.ps1`
- `winhead.ps1`
- `winls.ps1`
- `winman.ps1`
- `winmkdir.ps1`
- `winmv.ps1`
- `winpwd.ps1`
- `winrm.ps1`
- `wintail.ps1`
- `wintouch.ps1`

*(Update this list as you add more scripts to the repository.)*

## Enabling PowerShell Scripts on Windows

By default, Windows restricts the execution of PowerShell scripts for security reasons. To use the commands in this project, you may need to change your execution policy:

1. **Open PowerShell as Administrator**  
   Right-click the PowerShell icon and select **Run as Administrator**.

2. **Check your current execution policy:**
   ```bash
   Get-ExecutionPolicy
   ```

3. **Set the execution policy to allow scripts:**
   ```bash
   Set-ExecutionPolicy RemoteSigned
   ```
   This allows local scripts to run and requires downloaded scripts to be signed.

   - For a temporary bypass (current session only), use:
     ```bash
     Set-ExecutionPolicy Bypass -Scope Process
     ```

4. **Unblock downloaded scripts (if needed):**
   - Right-click the `.ps1` file or folder, select **Properties**, and check **Unblock** at the bottom if present.

5. **Run your scripts as usual.**

> **Note:** Use the least permissive policy that fits your needs for better security. For more details, see the [Microsoft documentation](https://go.microsoft.com/fwlink/?LinkID=135170).

---

# Linux Commands in PowerShell

This project provides PowerShell equivalents of common Linux commands. Each command is implemented as a separate `.ps1` file, maintaining similar functionality to the original Linux commands while leveraging PowerShell's capabilities.

## Available Commands

| Linux Command | PowerShell Equivalent | Description                        |
|---------------|----------------------|------------------------------------|
| `ls`          | `winls.ps1`          | List directory contents            |
| `cd`          | `wincd.ps1`          | Change directory                   |
| `pwd`         | `winpwd.ps1`         | Print working directory            |
| `cat`         | `wincat.ps1`         | Display file contents              |
| `grep`        | `wingrep.ps1`        | Search text using patterns         |
| `cp`          | `wincp.ps1`          | Copy files and directories         |
| `mv`          | `winmv.ps1`          | Move/rename files and directories  |
| `rm`          | `winrm.ps1`          | Remove files or directories        |
| `mkdir`       | `winmkdir.ps1`       | Create directories                 |
| `touch`       | `wintouch.ps1`       | Create empty files or update timestamps |
| `echo`        | `winecho.ps1`        | Display a line of text             |
| `man`         | `winman.ps1`         | Display help for commands          |
| `find`        | `winfind.ps1`        | Search for files in a directory hierarchy |
| `head`        | `winhead.ps1`        | Output the first part of files     |
| `tail`        | `wintail.ps1`        | Output the last part of files      |

## Example: Creating Aliases in PowerShell Profile

Add the following to your PowerShell profile (`$PROFILE`):

```powershell
# Create aliases for Linux commands
Set-Alias -Name cat -Value "$repoPath\wincat.ps1"
Set-Alias -Name ls -Value "$repoPath\winls.ps1"
# Add other commands as needed
```

## Command Details and Usage

### winls.ps1
Lists directory contents, similar to PowerShell's `Get-ChildItem`.
```powershell
.\winls.ps1 [path]
.\winls.ps1 -l  # Detailed list format
.\winls.ps1 -a  # Show hidden files
```

### wincd.ps1
Changes the current directory.
```powershell
.\wincd.ps1 [path]
.\wincd.ps1 ~    # Navigate to home directory
```

### winpwd.ps1
Displays the current working directory.
```powershell
.\winpwd.ps1
```

### wincat.ps1
Displays the contents of files.
```powershell
.\wincat.ps1 file.txt
.\wincat.ps1 file1.txt file2.txt  # View multiple files
.\wincat.ps1 -n file.txt          # Show line numbers
```

### wingrep.ps1
Searches for patterns in text.
```powershell
.\wingrep.ps1 "pattern" file.txt
.\wingrep.ps1 -i "pattern" file.txt  # Case-insensitive search
.\wingrep.ps1 -n "pattern" file.txt  # Show line numbers
.\wingrep.ps1 -v "pattern" file.txt  # Invert match
Get-Content file.txt | .\wingrep.ps1 "pattern"  # Pipeline input
```

### wincp.ps1
Copies files and directories.
```powershell
.\wincp.ps1 source.txt destination.txt
.\wincp.ps1 -r source_dir destination_dir  # Recursive copy
```

### winmv.ps1
Moves or renames files and directories.
```powershell
.\winmv.ps1 oldname.txt newname.txt
.\winmv.ps1 file.txt directory/
```

### winrm.ps1
Removes files or directories.
```powershell
.\winrm.ps1 file.txt
.\winrm.ps1 -r directory/  # Recursive delete
.\winrm.ps1 -f file.txt    # Force delete without confirmation
```

### winmkdir.ps1
Creates directories.
```powershell
.\winmkdir.ps1 new_directory
.\winmkdir.ps1 -p path/to/nested/directory  # Create parent directories
```

### wintouch.ps1
Creates empty files or updates timestamps of existing files.
```powershell
.\wintouch.ps1 file.txt
.\wintouch.ps1 file1.txt file2.txt  # Create/update multiple files
```

### winecho.ps1
Displays text.
```powershell
.\winecho.ps1 Hello World
```

### winhead.ps1
Displays the first part of files.
```powershell
.\winhead.ps1 file.txt
.\winhead.ps1 file.txt 20  # Show first 20 lines
Get-Content file.txt | .\winhead.ps1  # Pipeline input
```

### wintail.ps1
Displays the last part of files.
```powershell
.\wintail.ps1 file.txt
.\wintail.ps1 file.txt 20  # Show last 20 lines
Get-Content file.txt | .\wintail.ps1  # Pipeline input
```

### winfind.ps1
Searches for files in a directory hierarchy.
```powershell
.\winfind.ps1 . "*.txt"
.\winfind.ps1 /path/to/search "file*" -type -t f  # Find only files
.\winfind.ps1 /path/to/search "dir*" -type -t d   # Find only directories
```

### winman.ps1
Displays help information for commands.
```powershell
.\winman.ps1 ls
.\winman.ps1 Get-Process  # Works with native PowerShell commands too
```

## Installation

1. Clone this repository or download the script files
2. Place the scripts in a directory of your choice
3. (Optional) Add the directory to your PATH to use the commands from anywhere

## Extending Functionality

Feel free to enhance these scripts with additional functionality to more closely match their Linux counterparts. Pull requests are welcome!

## License

This project is licensed under the GNU General Public License v3.0 – see the [LICENSE](LICENSE) file for details.

### What this means:
- You can freely use, modify, and distribute this software
- If you distribute modified versions, you must keep the source code open
- Any software that incorporates this code must also be released under GPL-3.0
- There is no warranty for this program

## Notes

- These implementations focus on the most common use cases and may not support all options available in the original Linux commands.
- Commands are designed to be intuitive for Linux users while still working within PowerShell's paradigms.

## Contributing

Contributions are welcome! Feel free to:

- Implement additional Linux commands
- Enhance existing implementations with more options/features
- Fix bugs or improve performance
- Enhance documentation

## Acknowledgments

- The Linux community for creating the original commands
- PowerShell team for developing a powerful scripting language
- GitHub and Sourcegraph for their AI assistance tools
- All contributors to this project

## Contact

If you have any questions or suggestions, please open an issue on GitHub or contact the repository maintainer.

---

*This project is not affiliated with or endorsed by the official Linux or PowerShell projects.*