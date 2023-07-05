# Folder
mkdir $HOME\workspace

# Scoop
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex

# Main
scoop install 7zip fzf rclone git pwsh sudo

# Extras
scoop bucket add extras
scoop install notepadplusplus lockhunter authy telegram chatgpt

# Nerd fonts
scoop bucket add nerd-fonts
scoop install JetBrains-Mono

# Nonportable
scoop bucket add nonportable
scoop install office-365-apps-minimal-np

# Winget
winget install --id=Brave.Brave -e
winget install --id=Cloudflare.Warp -e
winget install --id=flux.flux -e
winget install --id=NextDNS.NextDNS.Desktop -e
winget install --id=VirusTotal.VirusTotalUploader -e
winget install --id=VNGCorp.Zalo -e
winget install --id=Spotify.Spotify -e
winget install --id=Facebook.Messenger -e

# Config
cp $HOME\win10-scripts\config\notepadplusplus\config.xml $HOME\scoop\apps\notepadplusplus\current\
curl -L https://raw.githubusercontent.com/60ss/Npp-1-Dark/master/Npp-1-Dark.xml --output $HOME\scoop\apps\notepadplusplus\current\themes\Npp-1-Dark.xml
cp $HOME\win10-scripts\config\.gitconfig $HOME

# Context menu
reg import $HOME\scoop\apps\7zip\current\install-context.reg
reg import $HOME\scoop\apps\pwsh\current\install-explorer-context.reg
reg import $HOME\scoop\apps\notepadplusplus\current\install-context.reg
reg import $HOME\scoop\apps\lockhunter\current\install-context.reg
