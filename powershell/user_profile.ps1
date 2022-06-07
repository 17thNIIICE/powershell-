[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

#Prompt theme
Import-Module posh-git
Import-Module oh-my-posh
oh-my-posh init pwsh --config C:/Users/maksm/.config/powershell/themes/.paradox.omp.json | Invoke-Expression
oh-my-posh --init -shell pwsh --config .\maksm.omp.json | Invoke-Expression 

#Init custom profile
$omp_config = Join-Path $PSScriptRoot ".\maksm.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

#Alias
Set-Alias vim nvim
Set-Alias ll ls
Set-Alias g git
Set-Alias grep findstr
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
