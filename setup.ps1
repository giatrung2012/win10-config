# Folder
mkdir $HOME\workspace

# Winget
winget install -e --id flux.flux
winget install -e --id Cloudflare.Warp
winget install -e --id VirusTotal.VirusTotalUploader
winget install -e --id Tonec.InternetDownloadManager
winget install -e --id 7zip.7zip
winget install -e --id Git.Git
winget install -e --id Microsoft.PowerShell
winget install -e --id Twilio.Authy
winget install -e --id Notepad++.Notepad++
winget install -e --id CrystalRich.LockHunter

# Scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex

# Main
scoop install aria2 innounp wixtoolset winfetch fzf rclone

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

# Scoop checkup
sudo Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1

# Registry
.\scripts\fix-clock-when-dual-boot.reg

# Active IDM
iwr -useb https://raw.githubusercontent.com/lstprjct/IDM-Activation-Script/main/IAS.ps1 | iex
