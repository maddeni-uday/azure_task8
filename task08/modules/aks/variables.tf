variable "aks_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "Number of nodes"
  type        = number
  default     = 1
}

variable "vm_size" {
  description = "VM size for the node pool"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  type        = string
}

variable "acr_id" {
  description = "ID of the ACR for image pull access"
  type        = string
}

variable "key_vault_id" {
  description = "ID of the Key Vault for secret access"
  type        = string
}

variable "tags" {
  description = "Resource tags"
  type        = map(string)
}
