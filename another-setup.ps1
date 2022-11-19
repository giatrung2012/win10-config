# Powershell setup
New-Item -Path $PROFILE -Type File -Force
cp -Force .\config\powershell\Microsoft.PowerShell_profile.ps1 $HOME\Documents\PowerShell\

# Context
.\scripts\install-context-7zip.reg
.\scripts\install-context-notepadplusplus.reg
.\scripts\install-context-windows-terminal.reg

# Scoop checkup
sudo Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1

# Active IDM
iwr -useb https://raw.githubusercontent.com/lstprjct/IDM-Activation-Script/main/IAS.ps1 | iex
