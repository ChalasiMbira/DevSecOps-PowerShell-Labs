# View SSL Certificates installed on the system
Write-Host "Listing SSL certificates..."
Get-ChildItem -Path Cert:\LocalMachine\My | Format-Table -Property Subject, Thumbprint, NotAfter

# Check the SSL certificate for a website
$website = "https://www.google.com"
Write-Host "Checking SSL certificate for $website..."
$cert = [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
[System.Net.Dns]::GetHostAddresses($website)
$sslCert = Invoke-WebRequest -Uri $website -Method Head
$sslCert.Headers["Strict-Transport-Security"]
