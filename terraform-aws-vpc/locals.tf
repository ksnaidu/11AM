
### project name, env these details easily identification purpose we create

locals {       
  common_tags = {
    project = var.project
    Environment = var.environment
    terraform = "true"

  }
}
