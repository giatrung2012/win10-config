# Files
cp $HOME\scoop\apps\notepadplusplus\current\config.xml .\config\notepadplusplus\
cp $HOME\.gitconfig .\config\

# Folders
rclone sync $HOME\Documents\ gdrive:Documents
rclone sync $HOME\Pictures\ gdrive:Pictures
rclone sync $HOME\Videos\ gdrive:Videos
rclone sync $HOME\Music\ gdrive:Music
rclone sync $HOME\software\ gdrive:software
