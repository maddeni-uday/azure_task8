variable "name" {
  description = "The name of the Redis instance"
  type        = string
}

variable "location" {
  description = "The Azure region where Redis will be deployed"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "capacity" {
  description = "The size of the Redis cache"
  type        = number
  default     = 2
}

variable "family" {
  description = "The SKU family (C = Basic/Standard, P = Premium)"
  type        = string
  default     = "C"
}

variable "sku_name" {
  description = "The SKU name of the Redis cache"
  type        = string
  default     = "Basic"
}

variable "key_vault_id" {
  description = "ID of the Azure Key Vault to store secrets"
  type        = string
}
