# DevOps Assignment

This repository contains the code/scripts for the DevOps assignment.

## Prerequisites

Before you begin, ensure you have the following installed:

- Docker
- Terraform
- Jenkins
- Grafana

## Clone

To clone the repository, run the following command:

```
git clone https://github.com/manikcloud/devops-assingment.git
```
## Features
The assignment includes the following features:

- Creation of a Terraform module to spin up Docker containers with mounts enabled.
- Two containers are promoted as web servers using Dockerfile and Terraform modules.
- One container is promoted as a load balancer using Nginx.
- Load balancing is tested by putting stress on the servers.

### Setup of Jenkins on one container.
- Configuration of a CI/CD pipeline on Jenkins for the web servers.
- Testing by making small changes like including headers or changing the background color.
- Setup of monitoring for all containers using Grafana (or any other open-source tool of your choice).
- Creation of a separate Terraform module for applying security features to all containers.
- Harden the servers and block public access to web servers, allowing traffic only through the load balancer.

## Conclusion
The code/scripts provided in this repository are optimized for production deployment.


Feel free to modify the content and formatting as per your specific requirements.

