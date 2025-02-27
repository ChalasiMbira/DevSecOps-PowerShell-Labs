# Define GitHub Actions YAML file
$githubActionsFile = "$HOME\GitLab\.github\workflows\ci.yml"

# Create the directory if not exists
New-Item -Path "$HOME\GitLab\.github\workflows" -ItemType Directory -Force

# Write the YAML configuration
@"
name: CI Build

on: [push]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v2
      - name: Set up Node.js
        uses: actions/setup-node@v2
        with:
          node-version: 14
      - name: Install Dependencies
        run: npm install
      - name: Run Tests
        run: npm test
"@ | Set-Content -Path $githubActionsFile

Write-Host "GitHub Actions CI/CD setup completed."
