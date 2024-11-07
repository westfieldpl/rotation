$p="HKCU:\Software\Microsoft\Windows\CurrentVersion";
Set-ItemProperty -Path "$p\Explorer\Advanced" -Name "ShowTaskViewButton" -Value 0;
Set-ItemProperty -Path "$p\Explorer\Advanced" -Name "TaskbarDa" -Value 0;
Set-ItemProperty -Path "$p\Search" -Name "SearchboxTaskbarMode" -Value 0;
Set-ItemProperty -Path "$p\Explorer\Advanced" -Name "ShowCopilotButton" -Value 0;
Stop-Process -Name explorer -Force;Start-Process explorer;
Write-Host "Taskbar elements disabled successfully!"
