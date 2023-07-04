# choco-client-autoupgrader
Small script to regularly check for updates for Chocolatey-installed packages.

This script is intended to be used in a private environment on your personal computer. This setup might be security risk on computers used by multiple users. Use at your own risk.

## How to use
1. Clone the script to a location of your choosing
2. Create a new Windows Task in the Task Planner:
    1. In "General", give it a meaningful name and a description.
    2. Still in General, choose an user Account with Adminsitrative rights and set the checkbox to elevate privileges
    3. As trigger, choose "On Login" and your user account
    4. As action, use "Run Program"
        1. The program is "powershell.exe"
        2. Argument is "-f "C:\Path\to\the\script.ps1"
    5. At conditions, uncheck everything (especially relevant on laptops)
    6. Settings: Keep everything on default

Now, everytime you log into your computer, a PowerShell window will pop up and check if updates for your chocolatey packages are available. If yes, it asks for confirmation before upgrading them. If no, it just closes.
