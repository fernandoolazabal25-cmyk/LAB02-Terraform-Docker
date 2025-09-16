# LAB02 - Terraform + Docker
Repositorio de práctica para desplegar un entorno **DEV** utilizando **Terraform** y **Docker**, que incluye servicios de **Nginx**, **PostgreSQL** y **Redis**.

## 🚀 Tecnologías
- Terraform
- Docker
- Nginx
- PostgreSQL
- Redis

## 📂 Estructura
- `main.tf` → Configuración principal.
- `app1.tf`, `app2.tf`, `app3.tf` → Servicios de aplicación (Nginx).
- `database.tf` → Base de datos PostgreSQL.
- `monitor.tf` → Servicio de monitoreo (si aplica).
- `networks.tf` → Definición de redes.
- `variables.tf` → Variables usadas en el proyecto.
- `terraform.tfvars` → Valores asignados a las variables.

---

## ⚡ Instrucciones para ejecutar en otra máquina

### 1. Clonar el repositorio
```bash
git clone https://github.com/fernandoolazabal25-cmyk/LAB02-Terraform-Docker.git
cd LAB02-Terraform-Docker
```

### 2. Instalar dependencias necesarias

Tener Docker instalado y en ejecución.

Instalar Terraform (v1.9+ recomendado).

Verificar instalación:
```bash
docker --version
terraform --version
```
### 3. Inicializar Terraform
```bash
terraform init
```
### 4. Revisar el plan de despliegue
```bash
terraform plan
```
### 5. Aplicar la infraestructura
```bash
terraform apply -auto-approve
```
### 6. Verificar los contenedores
```bash
docker ps -a
```
Deberías ver algo como:

- `app1-dev` → Nginx en puerto 3000
- `app2-dev` → Nginx interno
- `app3-dev` → Nginx interno
- `postgres-dev` → PostgreSQL en puerto 5432
- `redis-dev` → Redis en puerto 6379

### 🧹 Limpiar recursos

Para detener y eliminar los contenedores creados:
```bash
terraform destroy -auto-approve
```
### 👤 Autor

Fernando Olazabal
