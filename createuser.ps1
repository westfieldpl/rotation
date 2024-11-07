New-LocalUser -Name "User" -NoPassword -FullName "User" -Description "WWPL Public Access Account" -UserMayNotChangePassword $true
Add-LocalGroupMember -Group "Users" -Member "User"
