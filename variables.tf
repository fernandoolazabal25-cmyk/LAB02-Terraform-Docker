variable "nginx_external_port" {
  description = "Puerto externo de Nginx según entorno"
  type        = map(number)
}

variable "postgres_user" {
  description = "Usuario de PostgreSQL"
  type        = string
  default     = "admin"
}

variable "postgres_password" {
  description = "Password de PostgreSQL"
  type        = string
  default     = "admin123"
}

variable "postgres_db" {
  description = "Nombre de la base de datos"
  type        = string
  default     = "app_db"
}
