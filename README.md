# Enhanced DevOps Flask App

This is an enhanced Python Flask application for DevOps automation testing.

## Features
- `/` Welcome route
- `/health` Health check endpoint
- `/echo` POST endpoint that echoes received JSON

## How to Run

### Docker
```bash
docker build -t enhanced-devops-app .
docker run -p 5000:5000 enhanced-devops-app
```

### Kubernetes
```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```
