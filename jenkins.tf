resource "docker_container" "jenkins" {
  name  = "jenkins"
  image = docker_image.jenkins.latest
  volumes {
    container_path = "/var/jenkins_home"
    host_path      = "/var/jenkins_home"
    read_only      = false
  }
  ports {
    internal = 8080
    external = 8083
  }
}
