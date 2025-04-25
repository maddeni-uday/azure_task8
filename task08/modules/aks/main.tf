resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "system"
    node_count = var.node_count
    vm_size    = var.vm_size
    # os_disk_type = "Ephemeral"
  }

  identity {
    type         = "UserAssigned"
    identity_ids = [azurerm_user_assigned_identity.example.id]
  }

  key_vault_secrets_provider {
    secret_rotation_enabled = true
  }

  kubernetes_version = var.kubernetes_version

  tags = var.tags
  # depends_on = [
  #   azurerm_role_assignment.aks_acr_pull
  # ]
}


resource "azurerm_user_assigned_identity" "example" {
  name                = "aks-example-identity"
  resource_group_name = var.resource_group_name
  location            = var.location
}

# Role assignment: Allow AKS to pull from ACR
resource "azurerm_role_assignment" "aks_acr_pull" {
  scope                            = var.acr_id
  role_definition_name             = "AcrPull"
  principal_id                     = azurerm_user_assigned_identity.example.principal_id
  skip_service_principal_aad_check = true
}


# Key Vault access policy: Let AKS access secrets
# resource "azurerm_key_vault_access_policy" "aks_kv_access" {
#   key_vault_id = var.key_vault_id

#   tenant_id = data.azurerm_client_config.current.tenant_id
#   object_id = data.azurerm_client_config.current.object_id

#   key_permissions = [
#     "Get", "List",
#   ]

#   secret_permissions = [
#     "Get", "List",
#   ]
# }

data "azurerm_client_config" "current" {}

resource "azurerm_role_assignment" "key_vault_secret" {
  principal_id                     = azurerm_kubernetes_cluster.aks_cluster.kubelet_identity[0].object_id
  role_definition_name             = "Key Vault Secrets User"
  scope                            = var.key_vault_id
  skip_service_principal_aad_check = true
}