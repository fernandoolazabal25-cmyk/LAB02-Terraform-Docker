resource "docker_container" "app2" {
  name  = "app2-${terraform.workspace}"
  image = "nginx:stable-alpine3.21-perl"

  networks_advanced {
    name = docker_network.app_net.name
  }
}
