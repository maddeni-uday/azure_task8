resource "azurerm_container_group" "container" {
  name                = var.container_group_name
  location            = var.location
  resource_group_name = var.resource_group_name
  ip_address_type     = "Public"
  os_type             = "Linux"
  restart_policy      = var.restart_policy
  dns_name_label      = var.dns_name_label
  sku                 = "Standard"

  identity {
    type         = "UserAssigned"
    identity_ids = [var.user_assigned_identity_id] # Reference the user-assigned identity
  }

  image_registry_credential {
    server                    = "cmtr93253787mod8cr.azurecr.io" # change it to variable later!!!
    user_assigned_identity_id = var.user_assigned_identity_id
  }

  container {
    name   = var.container_group_name
    image  = var.image
    cpu    = var.cpu_cores
    memory = var.memory_in_gb

    environment_variables = {
      CREATOR        = "ACI"
      REDIS_PORT     = "6380"
      REDIS_SSL_MODE = "True"
    }

    secure_environment_variables = {
      REDIS_URL = var.redis_hostname
      REDIS_PWD = var.redis_primary_key
    }

    ports {
      port     = var.port
      protocol = "TCP"
    }

  }
  tags = var.tags
}