variable "container_registry_name" {
  type        = string
  description = "value"
}

variable "sku" {
  type        = string
  description = "value"
}

variable "registrytask_name" {
  type        = string
  description = "value"
}


variable "os_type" {
  type        = string
  description = "value"
}

variable "git_pat" {
  description = "value"
  type        = string
  sensitive   = true
}

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "value"
  type        = string
}