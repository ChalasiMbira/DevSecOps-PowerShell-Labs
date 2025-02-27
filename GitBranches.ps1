# Set repository directory
$localDir = "$HOME\GitLab"
Set-Location $localDir

# Create a new branch
$branchName = "feature-branch"
Write-Host "Creating and switching to branch: $branchName"
git checkout -b $branchName

# Modify file in the new branch
$file = "git_lab.txt"
Write-Host "Modifying file..."
Add-Content -Path $file -Value "`nNew feature added."

# Commit changes
Write-Host "Committing changes..."
git add $file
git commit -m "Updated git_lab.txt in feature branch"

# Switch to main branch and merge
Write-Host "Switching back to main and merging..."
git checkout main
git merge $branchName

# Push changes
Write-Host "Pushing changes..."
git push origin main

Write-Host "Git Branching Completed."
