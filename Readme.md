# PowerShell-Linux

A collection of PowerShell implementations of common Linux commands, making Linux-style command-line operations available in PowerShell environments.

## Description

This project recreates familiar Linux commands using PowerShell, providing Windows users with the comfort and functionality of Linux-style commands without leaving the PowerShell environment. Each command is implemented as a PowerShell function or script that mimics the behavior and options of its Linux counterpart.

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

## Development

This project is developed with the assistance of:

- GitHub's AI tools
- Sourcegraph's Cody AI (using Claude 3.7 Sonnet model)

## License

This project is licensed under the GNU General Public License v3.0 - see the LICENSE file for details.

### What this means:
- You can freely use, modify, and distribute this software
- If you distribute modified versions, you must keep the source code open
- Any software that incorporates this code must also be released under GPL-3.0
- There is no warranty for this program

## Acknowledgments

- The Linux community for creating the original commands
- PowerShell team for developing a powerful scripting language
- GitHub and Sourcegraph for their AI assistance tools
- All contributors to this project

## Contact

If you have any questions or suggestions, please open an issue on GitHub or contact the repository maintainer.

---

*This project is not affiliated with or endorsed by the official Linux or PowerShell projects.*