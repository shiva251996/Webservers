Enhanced CI/CD Pipeline with Integrated Security & Compliance
==============================================================

This project uses a CI/CD pipeline to automate the process of building, testing,
and deploying an application to a Kubernetes cluster using GitOps with ArgoCD. 
The pipeline includes integrated security and compliance checks using SonarQube for 
static code analysis and Trivy for vulnerability scanning.

Features
========
[+] SonarQube Integration: Analyzes code for bugs, vulnerabilities, and code smells.

[+] Trivy Vulnerability Scan: Scans Docker images for vulnerabilities.

[+] ArgoCD GitOps: Automatically deploys applications to Kubernetes using ArgoCD.

[+] Docker Image Build and Push: Creates multi-platform Docker images.


Prerequisites
=============
Before using this pipeline, ensure you have the following:

GitHub Actions enabled for your repository.

A SonarQube account and server setup for code analysis.

Trivy configured for vulnerability scanning.

A Kubernetes cluster for deployment, managed using ArgoCD for GitOps.

Secrets configured in GitHub for sensitive variables.

GitHub Actions Variables Setup
==================================
Make sure to set the following secrets and environment variables in your GitHub repository to ensure smooth execution of the CI/CD pipeline:

GitHub Secrets
SONAR_HOST_URL: URL of your SonarQube server 

SONAR_TOKEN: The authentication token for accessing SonarQube.

DOCKER_USERNAME: Docker Hub username for authenticating and pushing images.

DOCKER_PASSWORD: Docker Hub password for authenticating and pushing images.


These secrets can be configured in Settings > Secrets and Variables > Actions section of your GitHub repository.

Additional Environment Variables

You can also define variables for specific tasks:

NODE_VERSION: Set the Node.js version 

DOCKER_IMAGE_TAG: Define a custom Docker image tag, if needed.

DEPLOYMENT_YAML_PATH: Path to your Kubernetes deployment YAML file

