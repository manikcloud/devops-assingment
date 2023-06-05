resource "docker_image" "nginx" {
  name = "nginx:latest"
}

resource "docker_image" "jenkins" {
  name = "jenkins/jenkins:lts"
}

resource "docker_container" "web" {
  count = 2
  name  = "web${count.index}"
  image = docker_image.nginx.latest
  volumes {
    container_path = "/usr/share/nginx/html"
    host_path      = "./index.html"
    read_only      = false
  }
  ports {
    internal = 80
    external = 8081 + count.index
  }
}
