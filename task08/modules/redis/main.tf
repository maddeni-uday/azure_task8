resource "azurerm_redis_cache" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku_name
}

# # Store Redis Hostname in Key Vault
# resource "azurerm_key_vault_secret" "redis_hostname" {
#   name         = "redis-hostname"
#   value        = azurerm_redis_cache.this.hostname
#   key_vault_id = var.key_vault_id
# }

# # Store Redis Primary Key in Key Vault
# resource "azurerm_key_vault_secret" "redis_primary_key" {
#   name         = "redis-primary-key"
#   value        = azurerm_redis_cache.this.primary_access_key
#   key_vault_id = var.key_vault_id
# }
