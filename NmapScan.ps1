# Ensure Nmap is installed
$NmapPath = "C:\Program Files (x86)\Nmap\nmap.exe"
if (!(Test-Path $NmapPath)) {
    Write-Host "Nmap is not installed. Please install Nmap from https://nmap.org."
    Exit
}

# Perform a basic network scan using Nmap
$targetIP = "192.168.1.1"  # Replace with the target IP address
Write-Host "Performing Nmap Scan on $targetIP..."
Start-Process -FilePath $NmapPath -ArgumentList "-sP $targetIP" -Wait
