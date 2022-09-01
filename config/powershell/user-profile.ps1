echo `n
oh-my-posh init pwsh --config D:\config\powershell\agnoster.omp.json | Invoke-Expression



# Remove default alias
del alias:gc -Force
del alias:gp -Force

# Git
function gitStatus { git status }
Set-Alias -Name gt -Value gitStatus
function gitAdd { git add . }
Set-Alias -Name ga -Value gitAdd
function gitCommit { git commit }
Set-Alias -Name gc -Value gitCommit
function gitPush { git push }
Set-Alias -Name gp -Value gitPush
function gitDiff { git diff }
Set-Alias -Name gd -Value gitDiff
function gitPull { git pull }
Set-Alias -Name gpl -Value gitPull
