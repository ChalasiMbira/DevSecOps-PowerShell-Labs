# Check if GPG is installed
Write-Host "Checking for GPG..."
if (!(Get-Command gpg -ErrorAction SilentlyContinue)) {
    Write-Host "GPG not found. Please install GPG for Windows: https://gpg4win.org/"
    Exit
}

# Configure Git for signed commits
Write-Host "Configuring Git for signed commits..."
git config --global commit.gpgSign true

# Show current signing key
Write-Host "Current GPG key (if available):"
gpg --list-secret-keys --keyid-format LONG

Write-Host "To sign commits, use:"
Write-Host 'git commit -S -m "Signed commit message"'

Write-Host "Git Security Setup Completed."
