
resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_image" "app1" {
  name = "varunmanik/httpd:green"
}

resource "docker_image" "app2" {
  name = "varunmanik/httpd:blue"
}

resource "docker_image" "jenkins" {
  name = "jenkins/jenkins:lts"
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.latest
  name  = "nginx"
  ports {
    internal = 80
    external = 80
  }
  volumes {
    container_path = "/etc/nginx/nginx.conf"
    host_path      = "/home/ubuntu/varun/devops-assingment/nginx.conf"
    read_only      = true
  }
  networks_advanced {
    name = docker_network.web.name
  }
}

resource "docker_container" "app1" {
  image = docker_image.app1.latest
  name  = "app1"
  networks_advanced {
    name = docker_network.web.name
  }
}

resource "docker_container" "app2" {
  image = docker_image.app2.latest
  name  = "app2"
  networks_advanced {
    name = docker_network.web.name
  }
}

resource "docker_container" "jenkins" {
  image = docker_image.jenkins.latest
  name  = "jenkins"
  ports {
    internal = 8080
    external = 8080
  }
  volumes {
    container_path = "/var/jenkins_home"
    host_path      = "/home/ubuntu/jenkins_home" // Make sure this directory exists on your local system
    read_only      = false
  }
  networks_advanced {
    name = docker_network.web.name
  }
}

resource "docker_container" "grafana" {
  image = "grafana/grafana"
  name  = "grafana"
  ports {
    internal = 3000
    external = 3000
  }
  networks_advanced {
    name = docker_network.web.name
  }
}

resource "docker_network" "web" {
  name = "web"
}