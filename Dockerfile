terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
      version = "2.15.0"  # or any version you wish to use
    }
  }
}

provider "docker" {}
