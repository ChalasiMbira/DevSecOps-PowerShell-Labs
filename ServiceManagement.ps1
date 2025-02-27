# List all running services
Write-Host "Running Services:"
Get-Service | Where-Object {$_.Status -eq "Running"} | Format-Table -AutoSize

# Restart a specific service (e.g., Windows Update)
$ServiceName = "wuauserv"
Write-Host "`nRestarting Service: $ServiceName"
Restart-Service -Name $ServiceName -Force -ErrorAction SilentlyContinue

# Check service status
Write-Host "`nService Status:"
Get-Service -Name $ServiceName
