# Set repository details
$repoURL = "https://github.com/YOUR_USERNAME/DevSecOps-Git-Labs.git"
$localDir = "$HOME\GitLab"

# Clone the repository
Write-Host "Cloning repository..."
git clone $repoURL $localDir
Set-Location $localDir

# Create a new file
Write-Host "Creating a new file..."
$file = "git_lab.txt"
Set-Content -Path $file -Value "This is a Git test file."

# Stage the file
Write-Host "Adding file to Git..."
git add $file

# Commit the changes
Write-Host "Committing the file..."
git commit -m "Added git_lab.txt"

# Push changes to GitHub
Write-Host "Pushing changes..."
git push origin main

# Pull latest changes
Write-Host "Pulling latest changes..."
git pull origin main

Write-Host "Git Basics Completed."
