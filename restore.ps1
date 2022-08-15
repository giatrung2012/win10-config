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

# Extras
scoop bucket add extras
scoop install appbuster nomacs shutup10 vlc windows-terminal unlocker authy vcredist2022 okular notepadplusplus ksnip 
scoop install easyserviceoptimizer -s

# Nerd fonts
scoop bucket add nerd-fonts
scoop install JetBrainsMono-NF JetBrains-Mono

# Nirsoft
scoop bucket add nirsoft
scoop install shellmenunew specialfoldersview advancedrun 

# Chawyehsu
scoop bucket add chawyehsu_dorado https://github.com/chawyehsu/dorado
scoop install powershell process-explorer

# ACooper81
scoop bucket add ACooper81_scoop-apps https://github.com/ACooper81/scoop-apps
scoop install SordumWindowsUpdateBlocker-Portable -s

# Hu3rror
scoop bucket add hu3rror_scoop-muggle https://github.com/hu3rror/scoop-muggle
scoop install defender-control -s

# Beerpiss
scoop bucket add beerpiss_scoop-bucket https://github.com/beerpiss/scoop-bucket
scoop install evkey

# Wentosor
scoop bucket add wentosor_wentos-bucket https://github.com/wentosor/wentos-bucket
scoop install InternetDownloadManager -s

# Shutup10 config
rm $HOME\scoop\apps\shutup10\current\OOSU10.ini
cp .\config\shutup10\ooshutup10.cfg $HOME\scoop\apps\shutup10\current\
cp .\config\easyserviceoptimizer\eso.ini $HOME\scoop\apps\easyserviceoptimizer\current\
cp .\config\evkey\setting.ini $HOME\scoop\apps\evkey\current\
cp .\config\windows-terminal\settings.json "$HOME\AppData\Local\Microsoft\Windows Terminal\" 
cp -r -Force .\config\okular\ $HOME\AppData\Local\
cp .\config\notepadplusplus\config.xml $HOME\scoop\apps\notepadplusplus\current\
cp .\config\notepadplusplus\themes\Dracula.xml $HOME\scoop\apps\notepadplusplus\current\themes\

# Git
git config --global user.email "trunghsg2012@gmail.com"
git config --global user.name "giatrung2012"
git config --global core.editor "'$HOME\scoop\apps\notepadplusplus\current\notepad++.exe' -multiInst -notabbar -nosession -noPlugin"
git config --global --add safe.directory D:/
git config --global credential.helper manager-core
