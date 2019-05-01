# $Profile is the full path for your `Microsoft.PowerShell_profile.ps1`
# All code there will be executed when the PS session starts
if (-not (Test-Path $Profile)) {
    New-Item -Type file -Path $Profile -Force
    notepad $Profile
}
# More info: `help about_profiles`
# For a more useful shell, be sure to check the project PSReadLine below