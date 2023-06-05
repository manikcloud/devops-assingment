resource "null_resource" "jenkins_password" {
  triggers = {
    jenkins_id = docker_container.jenkins.id
  }

  provisioner "local-exec" {
    command = "docker exec ${docker_container.jenkins.name} cat /var/jenkins_home/secrets/initialAdminPassword > /home/ubuntu/jenkins_password.txt"
  }
}

output "jenkins_initial_admin_password" {
  value     = file("/home/ubuntu/jenkins_password.txt")
  sensitive = true
}


output "nginx_ip_address" {
  value = docker_container.nginx.ip_address
}

output "app1_ip_address" {
  value = docker_container.app1.ip_address
}

output "app2_ip_address" {
  value = docker_container.app2.ip_address
}

output "jenkins_ip_address" {
  value = docker_container.jenkins.ip_address
}


output "grafana_url" {
  value = "http://${docker_container.grafana.ip_address}:3000"
}
