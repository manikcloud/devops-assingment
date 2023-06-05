resource "docker_container" "load_balancer" {
  name  = "load_balancer"
  image = docker_image.nginx.latest
  volumes {
    container_path = "/etc/nginx/nginx.conf"
    host_path      = "/opt/jagdeep/nginx.conf"
    read_only      = true
  }
  ports {
    internal = 80
    external = 8080
  }
  depends_on = [docker_container.web]
}
