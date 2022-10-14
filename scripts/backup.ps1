# Files
cp $HOME\scoop\apps\shutup10\current\ooshutup10.cfg .\config\shutup10\
cp $HOME\scoop\apps\easyserviceoptimizer\current\eso.ini .\config\easyserviceoptimizer\
cp $HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 .\config\powerShell\
cp "$HOME\AppData\Local\Microsoft\Windows Terminal\settings.json" .\config\windows-terminal\
cp $HOME\scoop\apps\notepadplusplus\current\config.xml .\config\notepadplusplus\
cp $HOME\.gitconfig .\config\git\
cp "$HOME\AppData\Roaming\CodeBlocks\default.conf" .\config\codeblocks-mingw\

# Folders
rclone sync -i .\software\ odrive:software
rclone sync -i .\docs\ odrive:docs
rclone sync -i .\imgs\ odrive:imgs
rclone sync -i .\videos\ odrive:videos
rclone sync -i .\music\ odrive:music
