# Define variables
$repoDir = "$HOME\GitLab"
$file = "$repoDir\automation_log.txt"
Set-Location $repoDir

# Create a log file
Write-Host "Creating a log file..."
Add-Content -Path $file -Value "$(Get-Date) - Automated commit"

# Stage, commit, and push changes
Write-Host "Pushing updates to GitHub..."
git add .
git commit -m "Automated update - $(Get-Date)"
git push origin main

Write-Host "Git Automation Completed."
