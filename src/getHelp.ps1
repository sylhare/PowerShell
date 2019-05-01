# Find commands
Get-Command about_* # alias: gcm
Get-Command -Verb Add
Get-Alias ps
Get-Alias -Definition Get-Process

Get-Help ps | less # alias: help
ps | Get-Member # alias: gm

Show-Command Get-EventLog # Display GUI to fill in the parameters

Update-Help # Run as admin