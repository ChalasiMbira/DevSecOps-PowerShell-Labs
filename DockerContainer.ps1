# Ensure Docker is installed and running
$dockerStatus = Get-Service -Name 'docker'
if ($dockerStatus.Status -ne 'Running') {
    Write-Host "Docker is not running. Starting Docker service..."
    Start-Service -Name 'docker'
}

# Pull a basic image from Docker Hub
Write-Host "Pulling the official NGINX image from Docker Hub..."
docker pull nginx

# Create and run a secure NGINX container
Write-Host "Creating and running a secure NGINX container..."
docker run -d --name secure-nginx -p 8080:80 nginx

# Inspect the running container
Write-Host "Inspecting the secure NGINX container..."
docker inspect secure-nginx
