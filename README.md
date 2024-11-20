# aws-compute-ecr-project

# Cross-Account Docker App

This project demonstrates how to integrate **AWS ECR (Elastic Container Registry)** with **Docker** to build, store, and deploy Docker images on AWS infrastructure. The project includes steps to set up a **Dockerized web application** using **Nginx** and push the Docker image to **AWS ECR**, followed by deploying it on an **EC2** instance.

## Project Overview

In this project, we focus on:
- **Building a Docker image** for a web application.
- **Storing the Docker image** in **AWS Elastic Container Registry (ECR)**.
- **Deploying the Docker container** on an **EC2 instance**.
- **Serving a simple web page** using **Nginx** inside the Docker container.

## Technologies Used

- **Docker**: For containerizing the web application.
- **AWS EC2**: For deploying the Dockerized application on the cloud.
- **AWS ECR**: For storing and managing Docker images.
- **Nginx**: For serving content inside the Docker container.
- **AWS IAM**: For managing access control to ECR.

## Setup Instructions

Follow these steps to set up and run the project:

### Prerequisites

- **AWS Account** with access to EC2 and ECR.
- **Docker** installed on your local machine.

### Clone the Repository

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/yourusername/cross-account-docker-app.git
   cd cross-account-docker-app
