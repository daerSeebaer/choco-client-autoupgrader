<# .SYNOPSIS
     Check Chocolatey for available updates
.DESCRIPTION
     Check for all installed Chocolatey packages if newer versions are available and ask if they should be installed
.NOTES
     Author     : Sebastian Dallinger
#>
Write-Host("Checking for Chocolatey updates ...")
$outdated = choco outdated 
#
# check if packages are outdated
if ($outdated.Count -ge 10) {
    # list outdated packages
    Out-Host -InputObject $outdated
    # ask user for confirmation
    $continueInstall = Read-Host "Do you want to update them now? (y to continue)"
    if ($continueInstall -like "y") {
        choco upgrade all -y
        Read-Host "Press any key to continue..."
    } else {
        exit
    }
}

