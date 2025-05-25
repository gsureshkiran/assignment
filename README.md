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
 ![image](https://github.com/user-attachments/assets/67b74a35-5eec-4c5f-9b5d-550bd9632f23)

![image](https://github.com/user-attachments/assets/503920d5-be0b-4112-b173-b21beee4b199)
next create the eks cluster using jenkins+terraform

![image](https://github.com/user-attachments/assets/034c09d0-05ba-4c86-9d2c-b3e56acc2f6a)


Next I create docker image, scan the docker image using trivy and push to remote repo using jenkins pipeline

![image](https://github.com/user-attachments/assets/794f6bec-0340-4d1e-a869-04f70a603ac0)

![image](https://github.com/user-attachments/assets/6887c1ff-9eb2-47e8-abd0-d01652f2a370)

![image](https://github.com/user-attachments/assets/706eb55c-8b40-40db-93a2-2aa91d270442)

![image](https://github.com/user-attachments/assets/b27fc93b-a437-479c-8453-76f1b5b1a6b5)

   
 
Next deploy the image into eks cluster using jenkins pipeline

![image](https://github.com/user-attachments/assets/d25635ac-4a2e-402d-80ac-04c24ae6ef7d)

 Next check the health of the application using shell script

![image](https://github.com/user-attachments/assets/bc159d74-15ac-45f4-bbd5-35d9ab8ccc3c)
 


Application output

![image](https://github.com/user-attachments/assets/b9a0f252-0a29-4b8e-99d6-379bd89eda8c)



![image](https://github.com/user-attachments/assets/a28b6528-2804-45da-96b7-d3f7f8340f94)

Lambda+S3event integarion output

![image](https://github.com/user-attachments/assets/39c0d87c-f2c7-4f0b-8d5f-729bac80504e)



