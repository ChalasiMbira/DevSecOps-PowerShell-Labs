# Display the current directory
Write-Host "Current Directory:" (Get-Location)

# List files and directories
Write-Host "Listing files and folders:"
Get-ChildItem

# Change to a specific directory
Set-Location C:\Windows
Write-Host "Changed to Directory:" (Get-Location)

# Go back to home directory
Set-Location $HOME
Write-Host "Back to Home Directory:" (Get-Location)
