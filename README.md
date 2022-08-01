## Restore
- Turn off real-time defender
- Right click restore.ps1 run & run with powershell
- Check file reg 7zip & Windows Terminal


## PowerShell
```powershell
notepad $PROFILE
New-Item -Path $PROFILE -Type File -Force
oh-my-posh init pwsh | Invoke-Expression
Install-Module PSReadLine
```

## Terminal config
```powershell
cp -Force .\config\powershell\Microsoft.PowerShell_profile.ps1 $HOME\Documents\PowerShell\
```

## Post restore
- Add DOCX, XSLX, PTTX to IDM file types
- Enable WUB with Protect service setings
- Enale wider and disable noti in f.lux
