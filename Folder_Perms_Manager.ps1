Write-Host "This script focuses on folder permissions.  It asks for a folder and lets you view, add, and remove users to the various read and read / write groups for the folder."



function Get-ValidFolderPath {
    while ($true) {
        $folderPath = Read-Host -Prompt "Please enter the full path to the folder you wish to manipulate"
        if (Test-Path -Path $folderPath) {
            return $folderPath
        } else {
            Write-Host "The path you provided does not exist. Please try again." -ForegroundColor Red
        }
    }
}



$loop = $true
$menuArray = @()

$folder = Get-ValidFolderPath

#run the menu
#   1.  list folder permission groups
#   2.  

while ($menuloop) {
    #Display Menu Options
    Write-Host "`n`nPlease select an action:"
    Write-Host "1.  List folder permissions"
    Write-Host "2.  Add a user to the read only group"
    Write-Host "3.  Add a user to the modify group"
    Write-Host "4.  Remove a user from the read only group"
    Write-Host "5.  Remove a user from the modify group"
    Write-Host "6.  Look up a new folder"
    Write-Host "7.  Exit"

    [int]$selection = Read-Host "`n Enter your selection"

    Switch ($selection) {
        1 {

        }
    }
}