# Enhanced DevOps Flask App

This is an enhanced Python Flask application for DevOps automation testing.

## Features
- `/` Welcome route
- `/health` Health check endpoint
- `/echo` POST endpoint that echoes received JSON
For this project i use AWS+Terraform+Ansible+jenkins
first deploy the jenkins and Ansible server and integrate the both tools using jenkins master slave configurations
 
After that configured the softwares such as git,awscli,eksctl,kubectl,docker
   next create the eks cluster using jenkins+terraform
 ![image](https://github.com/user-attachments/assets/5137f711-685b-4307-981a-fb46ef162d13)

Next I create docker image, scan the docker image using trivy and push to remote repo using jenkins pipeline
   
 
Next deploy the image into eks cluster using jenkins pipeline
 Next check the health of the application using shell script
 


Application output


Lambda+S3event integarion output


