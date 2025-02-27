# Create a test file
$FilePath = "$HOME\testfile.txt"
New-Item -Path $FilePath -ItemType File -Force

# Get file permissions
Write-Host "Current Permissions:"
Get-Acl -Path $FilePath | Format-List

# Grant read & write permissions to a user (replace USERNAME)
$Acl = Get-Acl -Path $FilePath
$Rule = New-Object System.Security.AccessControl.FileSystemAccessRule("USERNAME", "Read,Write", "Allow")
$Acl.SetAccessRule($Rule)
Set-Acl -Path $FilePath -AclObject $Acl

# Verify the updated permissions
Write-Host "Updated Permissions:"
Get-Acl -Path $FilePath | Format-List
