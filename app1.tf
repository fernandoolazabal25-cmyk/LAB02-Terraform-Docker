resource "docker_container" "app1" {
  name  = "app1-${terraform.workspace}"
  image = "nginx:stable-alpine3.21-perl"

  networks_advanced {
    name = docker_network.app_net.name
  }

  ports {
    internal = 80
    external = var.nginx_external_port[terraform.workspace]
  }
}
