echo `n
oh-my-posh init pwsh --config D:\config\powershell\agnoster.omp.json | Invoke-Expression
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History

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
function gitPush { git push origin }
Set-Alias -Name gp -Value gitPush

# lsd
function list { lsd }
Set-Alias -Name ls -Value list
function listList { lsd -lah }
Set-Alias -Name ll -Value listList
function listAll { lsd -a}
Set-Alias -Name la -Value listAll
