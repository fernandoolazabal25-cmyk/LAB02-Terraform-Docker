resource "docker_container" "app3" {
  name  = "app3-${terraform.workspace}"
  image = "nginx:stable-alpine3.21-perl"

  networks_advanced {
    name = docker_network.app_net.name
  }
}
