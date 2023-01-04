# Folder
mkdir $HOME\workspace

# Winget
winget install -e --id flux.flux;winget install -e --id Cloudflare.Warp;winget install -e --id VirusTotal.VirusTotalUploader;winget install -e --id Tonec.InternetDownloadManager;winget install -e --id 7zip.7zip;winget install -e --id Git.Git;winget install -e --id Starship.Starship;winget install -e --id Microsoft.PowerShell;winget install -e --id nomacs.nomacs;winget install -e --id VideoLAN.VLC;winget install -e --id Microsoft.WindowsTerminal;winget install -e --id Twilio.Authy;winget install -e --id Notepad++.Notepad++;winget install -e --id ksnip.ksnip

# Scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex

# Main
scoop install aria2 innounp wixtoolset winfetch fzf rclone

# Extras
scoop bucket add extras
scoop install unlocker psreadline terminal-icons

# Nerd fonts
scoop bucket add nerd-fonts
scoop install JetBrainsMono-NF JetBrains-Mono

# Nonportable
scoop bucket add nonportable
scoop install office-365-apps-minimal-np

# Config
cp -r .\AppData\ $HOME\
curl -L https://raw.githubusercontent.com/dracula/notepad-plus-plus/master/Dracula.xml --output $HOME\AppData\Roaming\Notepad++\themes\Dracula.xml
cp .\.gitconfig $HOME
cp .\scripts\Microsoft.PowerShell_profile.ps1 $HOME\Documents\PowerShell\

# Scoop checkup
sudo Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1

# Active IDM
iwr -useb https://raw.githubusercontent.com/lstprjct/IDM-Activation-Script/main/IAS.ps1 | iex
