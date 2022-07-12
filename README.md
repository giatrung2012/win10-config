## Restore
- Run restore.ps1 with Windows PowerShell

## Dual boot
- Run fix-clock-when-dual-boot.reg
- Disable turn off device to save power in Device Manager
- Disable auto defrag, fast startup, Windows update service, defender

## Rclone
```powershell
rclone config
```
```powershell
rclone sync -i odrive:Pictures $HOME\Pictures\ 
rclone sync -i odrive:software .\software\ 
rclone sync -i odrive:docs .\docs\ 
```
