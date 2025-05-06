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
  default     = "cmtr-7850b25e-mod8"
}

variable "key_vault_name" {
  description = "value"
  type        = string
}

variable "git_pat" {
  description = "value"
  type        = string
  sensitive   = true
}