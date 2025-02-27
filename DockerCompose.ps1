# Ensure Docker Compose is installed
$composeStatus = Get-Command -Name "docker-compose" -ErrorAction SilentlyContinue
if (-not $composeStatus) {
    Write-Host "Docker Compose is not installed. Please install Docker Compose."
    Exit
}

# Navigate to the directory containing the docker-compose.yml file
cd "C:\Path\To\Your\ComposeApp"

# Run the Docker Compose application
Write-Host "Running the multi-container app using Docker Compose..."
docker-compose up -d

# Check the status of the containers
docker-compose ps
