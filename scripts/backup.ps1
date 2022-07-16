# Files
cp $HOME\scoop\apps\shutup10\current\ooshutup10.cfg .\config\
cp $HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 .\config\

# Folders
rclone sync -i .\software\ odrive:software
rclone sync -i .\docs\ odrive:docs
rclone sync -i .\imgs\ odrive:imgs
