# Get IP Configuration (TCP/IP)
Write-Host "Getting IP Configuration..."
$ipConfig = Get-NetIPAddress
$ipConfig | Format-Table -Property InterfaceAlias, IPAddress, PrefixLength

# Test DNS Resolution
$dnsServer = "8.8.8.8"
Write-Host "Testing DNS resolution to google.com using $dnsServer..."
Test-Connection -ComputerName google.com -DnsName $dnsServer

# Check HTTP/HTTPS port status (using localhost for example)
Write-Host "Checking HTTP (port 80) and HTTPS (port 443) status..."
Test-NetConnection -ComputerName localhost -Port 80
Test-NetConnection -ComputerName localhost -Port 443
