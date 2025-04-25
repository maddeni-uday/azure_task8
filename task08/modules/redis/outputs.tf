output "hostname" {
  value       = azurerm_redis_cache.this.hostname
  description = "value"
}

output "primary_key" {
  value       = azurerm_redis_cache.this.primary_access_key
  description = "value"
}