variable "location" {
  type        = string
  description = "location of resource group"
  default     = "East US"
}

variable "container_registry_name" {
  description = "value"
  type        = string
}


variable "container_group_name" {
  description = "value"
  type        = string
}

variable "name_pattern" {
  description = "value"
  type        = string
  default     = "cmtr-93253787-mod8"
}

variable "key_vault_name" {
  description = "value"
  type        = string
}


variable "key_vault_id" {
  description = "value"
  type        = string
}

variable "git_pat" {
  description = "Git Personal Access Token"
  type        = string
  sensitive   = true
}