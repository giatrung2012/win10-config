# Folders
mkdir software
mkdir docs
mkdir imgs
mkdir videos
mkdir music
mkdir workspace

# Scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex

# Main
scoop install 7zip fzf git innounp oh-my-posh sudo winfetch wixtoolset rclone
scoop install pwsh -s

# Extras
scoop bucket add extras
scoop install appbuster nomacs shutup10 vlc windows-terminal unlocker authy vcredist2022 notepadplusplus ksnip psreadline terminal-icons 
scoop install easyserviceoptimizer -s

# Nerd fonts
scoop bucket add nerd-fonts
scoop install JetBrainsMono-NF JetBrains-Mono 

# Shutup10 config
rm $HOME\scoop\apps\shutup10\current\OOSU10.ini
cp .\config\shutup10\ooshutup10.cfg $HOME\scoop\apps\shutup10\current\
cp .\config\easyserviceoptimizer\eso.ini $HOME\scoop\apps\easyserviceoptimizer\current\
cp .\config\windows-terminal\settings.json "$HOME\AppData\Local\Microsoft\Windows Terminal\" 
cp .\config\notepadplusplus\config.xml $HOME\scoop\apps\notepadplusplus\current\
cp .\config\notepadplusplus\themes\Dracula.xml $HOME\scoop\apps\notepadplusplus\current\themes\

# Git
git config --global user.email "trunghsg2012@gmail.com"
git config --global user.name "giatrung2012"
git config --global core.editor "'$HOME\scoop\apps\notepadplusplus\current\notepad++.exe' -multiInst -notabbar -nosession -noPlugin"
git config --global --add safe.directory D:/
git config --global credential.helper manager-core
