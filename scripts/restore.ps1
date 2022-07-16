# Folders
mkdir software
mkdir docs
mkdir imgs

# Scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex

# Main
scoop install 7zip fzf git innounp oh-my-posh sudo winfetch wixtoolset rclone lsd

# Extras
scoop bucket add extras
scoop install appbuster flux nomacs shutup10 sumatrapdf throttlestop vlc windows-terminal firefox unlocker authy 
scoop install easyserviceoptimizer -s

# Nerd fonts
scoop bucket add nerd-fonts
scoop install JetBrainsMono-NF

# Chawyehsu
scoop bucket add chawyehsu_dorado https://github.com/chawyehsu/dorado
scoop install powershell

# ACooper81
scoop bucket add ACooper81_scoop-apps https://github.com/ACooper81/scoop-apps
scoop install SordumWindowsUpdateBlocker-Portable 

# Hu3rror
scoop bucket add hu3rror_scoop-muggle https://github.com/hu3rror/scoop-muggle
scoop install defender-control

# Beerpiss
scoop bucket add beerpiss_scoop-bucket https://github.com/beerpiss/scoop-bucket
scoop install evkey 

# Wentosor
scoop bucket add wentosor_wentos-bucket https://github.com/wentosor/wentos-bucket
scoop install InternetDownloadManager

# PowerShell
Install-Module PSReadLine

# Shutup10 config
rm $HOME\scoop\apps\shutup10\current\OOSU10.ini
cp .\config\ooshutup10.cfg $HOME\scoop\apps\shutup10\current\

# Terminal config
cp .\config\Microsoft.PowerShell_profile.ps1 $HOME\Documents\PowerShell\

# Git
git config --global user.email "trunghsg2012@gmail.com"
git config --global user.name "giatrung2012"
git config --global core.editor notepad
git config --global --add safe.directory D:/

# Stuhack
git clone https://github.com/isanchop/stuhack.git $HOME\Downloads\stuhack

# Script for remove Edge
git clone https://github.com/ShadowWhisperer/Remove-Edge-Chromium $HOME\Downloads\Remove-Edge-Chromium
