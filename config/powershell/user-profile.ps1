# Starship
Invoke-Expression (&starship init powershell)

# Import modules
Import-Module posh-git
Import-Module Terminal-Icons
Import-Module scoop-completion
Import-Module PSReadLine

# PSReadLine
Set-PSReadLineOption -PredictionSource History

# Remove default alias
del alias:gc -Force
del alias:gp -Force
del alias:gm -Force
del alias:gmo -Force

# Alias
Set-Alias gt gitStatus
Set-Alias ga gitAdd
Set-Alias gc gitCommit
Set-Alias gp gitPush
Set-Alias gd gitDiff
Set-Alias gpl gitPull
Set-Alias gcl gitClone
Set-Alias gch gitCheckout
Set-Alias gm gitMerge
Set-Alias gmo gitMergeOurs

# Functions
function gitStatus { git status }
function gitAdd { git add . }
function gitCommit { git commit }
function gitPush { git push }
function gitDiff($item) { git diff $item }
function gitPull { git pull }
function gitClone($link) { git clone $link }
function gitCheckout($branch) { git checkout $branch }
function gitMerge($branch) { git merge $branch }
function gitMergeOurs($branch) { git merge -s ours $branch }
