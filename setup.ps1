# Folder
mkdir $HOME\workspace

# Scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex

# Main
scoop install 7zip aria2 innounp wixtoolset winfetch fzf rclone git pwsh sudo

# Extras
scoop bucket add extras
scoop install authy notepadplusplus lockhunter

# Nerd fonts
scoop bucket add nerd-fonts
scoop install JetBrainsMono-NF JetBrains-Mono

# Nonportable
scoop bucket add nonportable
scoop install office-365-apps-minimal-np

# Config
cp .\config\notepadplusplus\config.xml $HOME\scoop\apps\notepadplusplus\current\
curl -L https://raw.githubusercontent.com/dracula/notepad-plus-plus/master/Dracula.xml --output $HOME\scoop\apps\notepadplusplus\current\themes\Dracula.xml
cp .\config\.gitconfig $HOME

# Scoop checkup
sudo Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem' -Name 'LongPathsEnabled' -Value 1

# Context menu
sudo reg import $HOME\scoop\apps\7zip\current\install-context.reg
sudo reg import $HOME\scoop\apps\pwsh\current\install-context.reg
sudo reg import $HOME\scoop\apps\notepadplusplus\current\install-context.reg
sudo reg import $HOME\scoop\apps\lockhunter\current\install-context.reg

# Active IDM
iwr -useb https://raw.githubusercontent.com/lstprjct/IDM-Activation-Script/main/IAS.ps1 | iex
