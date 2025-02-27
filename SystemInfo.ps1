# Get system information
Write-Host "System Information"
Write-Host "------------------"
Write-Host "Hostname: " (hostname)
Write-Host "OS Version: " (Get-CimInstance Win32_OperatingSystem).Caption
Write-Host "User: " $env:USERNAME
Write-Host "RAM: " ((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB) "GB"

# Save output to a file
$OutputFile = "$HOME\system_info.txt"
Get-CimInstance Win32_OperatingSystem | Select-Object Caption, Version | Out-File -FilePath $OutputFile
Write-Host "System info saved to: $OutputFile"
