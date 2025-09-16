terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.6.2"
    }
  }
}

provider "docker" {}

# Workspaces recomendados:
# terraform init
# terraform workspace new dev
# terraform workspace select dev
# terraform plan
# terraform apply -auto-approve
# terraform destroy -auto-approve
