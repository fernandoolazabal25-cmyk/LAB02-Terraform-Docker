# Redis en persistence_net
resource "docker_container" "redis" {
  name  = "redis-${terraform.workspace}"
  image = "redis:7.4-alpine"
  networks_advanced {
    name = docker_network.persistence_net.name
  }
}

# PostgreSQL en persistence_net
resource "docker_container" "postgres" {
  name  = "postgres-${terraform.workspace}"
  image = "postgres:16-alpine"
  env = [
    "POSTGRES_USER=${var.postgres_user}",
    "POSTGRES_PASSWORD=${var.postgres_password}",
    "POSTGRES_DB=${var.postgres_db}"
  ]
  networks_advanced {
    name = docker_network.persistence_net.name
  }
}
