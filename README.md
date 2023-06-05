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


- Terraform module to spin up Docker containers with mounts enabled.
- Two Docker containers functioning as web servers.
- One Docker container functioning as a load balancer using Nginx.
- Load balancing testing by putting stress on the servers.

### Jenkins Setup
- Jenkins is set up on one of the containers.
- A CI/CD pipeline is configured on Jenkins for the web servers.
- The pipeline is tested by making small changes such as including headers or changing the background color.Setup of Jenkins on one container.

### Monitoring and Security
- Monitoring is set up for all containers using Grafana or any other open-source tool of your choice.
- A separate Terraform module is provided for applying security features to all these containers.
- Server hardening is implemented to block public access to web servers, allowing traffic only through the load balancer.

## Conclusion
The code/scripts provided in this repository are optimized for production deployment.


Feel free to modify the content and formatting as per your specific requirements.

