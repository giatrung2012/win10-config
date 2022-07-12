# Files
cp $HOME\scoop\apps\shutup10\current\OOSU10.cfg .\
cp $HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1 .\

# Folders
rclone sync -i $HOME\Pictures\ odrive:Pictures
rclone sync -i .\software\ odrive:software
rclone sync -i .\docs\ odrive:docs
