# Folders
mkdir docs
mkdir imgs
mkdir videos
mkdir music
mkdir workspace

# Scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex

# Main
scoop install 7zip fzf git innounp winfetch wixtoolset rclone sudo aria2 starship pwsh 

# Extras
scoop bucket add extras
scoop install nomacs vlc windows-terminal unlocker authy vcredist2022 notepadplusplus ksnip psreadline terminal-icons scoop-completion posh-git wpsoffice  

# Nerd fonts
scoop bucket add nerd-fonts
scoop install JetBrainsMono-NF JetBrains-Mono 

# Config
cp .\config\notepadplusplus\config.xml $HOME\scoop\apps\notepadplusplus\current\
cp .\config\notepadplusplus\themes\Dracula.xml $HOME\scoop\apps\notepadplusplus\current\themes\
cp .\config\nomacs\settings.ini $HOME\scoop\apps\nomacs\current\
cp .\config\git\.gitconfig $HOME
cp .\config\windows-terminal\settings.json "$HOME\AppData\Local\Microsoft\Windows Terminal\"
