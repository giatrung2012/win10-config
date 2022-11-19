# Files
cp $HOME\scoop\apps\nomacs\current\settings.ini .\config\nomacs\
cp $HOME\scoop\apps\notepadplusplus\current\config.xml .\config\notepadplusplus\
cp $HOME\.gitconfig .\config\git\
cp $HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 .\config\powershell\
cp "$HOME\AppData\Local\Microsoft\Windows Terminal\settings.json" .\config\windows-terminal\
cp "$HOME\AppData\Roaming\CodeBlocks\default.conf" .\config\codeblocks-mingw\

# Folders
rclone sync $HOME\software\ gdrive:software
rclone sync $HOME\Documents\ gdrive:Documents
rclone sync $HOME\Pictures\ gdrive:Pictures
rclone sync $HOME\Videos\ gdrive:Videos
rclone sync $HOME\Music\ gdrive:Music
