New-Item -Path $PROFILE -Type File -Force
Install-Module -Name PSReadLine -Repository PSGallery -Force
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
cp -Force .\config\powershell\Microsoft.PowerShell_profile.ps1 $HOME\Documents\PowerShell\
