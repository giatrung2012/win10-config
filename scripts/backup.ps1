# Files
cp $HOME\AppData\Roaming\Notepad++\config.xml .\AppData\Roaming\Notepad++\
cp $HOME\.gitconfig .\
cp $HOME\AppData\Roaming\CodeBlocks\default.conf .\AppData\Roaming\CodeBlocks\

# Folders
rclone sync $HOME\software\ gdrive:software
rclone sync $HOME\Documents\ gdrive:Documents
rclone sync $HOME\Pictures\ gdrive:Pictures
rclone sync $HOME\Videos\ gdrive:Videos
rclone sync $HOME\Music\ gdrive:Music
