# Set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\agnoster.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

Import-Module Terminal-Icons
Import-Module scoop-completion

# PSReadLine
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History

# Alias
del alias:gc -Force
del alias:gp -Force
Set-Alias gt gitStatus
Set-Alias ga gitAdd
Set-Alias gc gitCommit
Set-Alias gp gitPush
Set-Alias gd gitDiff
Set-Alias gpl gitPull
Set-Alias gcl gitClone

# Utilities
function gitStatus { git status }
function gitAdd { git add . }
function gitCommit { git commit }
function gitPush { git push }
function gitDiff($item) { git diff $item }
function gitPull { git pull }
function gitClone($link) { git clone $link }
