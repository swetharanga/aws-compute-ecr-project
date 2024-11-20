# aws-compute-ecr-project

# Cross-Account Docker App

This project demonstrates how to integrate **AWS ECR (Elastic Container Registry)** with **Docker** to build, store, and deploy Docker images on AWS infrastructure. The project includes steps to set up a **Dockerized web application** using **Nginx** and push the Docker image to **AWS ECR**, followed by deploying it on an **EC2** instance.

## Project Overview

In this project, we focus on:
- **Building a Docker image** for a web application.
- **Storing the Docker image** in **AWS Elastic Container Registry (ECR)**.
- **Serving a simple web page** using **Nginx** inside the Docker container.
- **Running the container locally and deploying it.
![Image Alt Text](https://github.com/swetharanga/aws-compute-ecr-project/blob/main/architecture.png)
## Technologies Used

- **Docker**: For containerizing the web application.
- **AWS ECR**: For storing and managing Docker images.
- **Nginx**: For serving content inside the Docker container.
- **AWS IAM**: For managing access control to ECR.
- **AWS CLI**: For accessing the AWS console and running ECR commands.

## Setup Instructions

Follow these steps to set up and run the project:

### Prerequisites

- **AWS Account** with access to IAM User account and ECR.
- **Docker** installed on your local machine.

### Clone the Repository

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/cross-account-docker-app.git
   cd cross-account-docker-app
   ```
## Set AWS CLI
- Set Up AWS CLI Access
- Log in as a Root user and create a user with necessary permissions to access ECR1
- Create an access key for CLI access1
- Run aws configure and enter your AWS access key, secret key, and region

## Build Docker Image 
   ```bash
   docker build -t cross-account-docker-app .
   ```
## Push Docker Image to AWS ECR
Log in to AWS and create an ECR repository:

```bash
aws ecr create-repository --repository-name app/cross-account-docker-app --region us-west-2
```
## Tag the Docker image to match your ECR repository URI:

```bash

docker tag cross-account-docker-app:latest 890742563835.dkr.ecr.us-west-2.amazonaws.com/app/cross-account-docker-app:latest
```
## Log in to AWS ECR:
```bash
aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 890742563835.dkr.ecr.us-west-2.amazonaws.com
```
## Push the Docker image to AWS ECR:

```bash
docker push 890742563835.dkr.ecr.us-west-2.amazonaws.com/app/cross-account-docker-app:latest
```
## Pull the image to launch it
```bash
docker pull 890742563835.dkr.ecr.us-west-2.amazonaws.com/app/cross-account-docker-app:latest
```
## Run the Docker container with the appropriate port mappings (e.g., port 80 for Nginx):

```bash

docker run -d -p 80:80 890742563835.dkr.ecr.us-west-2.amazonaws.com/app/cross-account-docker-app:latest
```
