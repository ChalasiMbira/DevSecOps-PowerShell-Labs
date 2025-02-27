# Check Windows Firewall status
Write-Host "Checking Windows Firewall status..."
$firewallStatus = Get-NetFirewallProfile
$firewallStatus | Format-Table -Property Name, Enabled

# Enable or Disable Windows Firewall (optional)
# Enable:
# Set-NetFirewallProfile -Profile Domain,Private,Public -Enabled True
# Disable:
# Set-NetFirewallProfile -Profile Domain,Private,Public -Enabled False

# Check if VPN is connected
Write-Host "Checking VPN connection..."
$vpnConnection = Get-VpnConnection
$vpnConnection | Format-Table -Property Name, ConnectionStatus

# Check proxy settings
Write-Host "Checking Proxy Settings..."
$proxy = Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings'
$proxy.Server
