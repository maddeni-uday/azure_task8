output "kubelet_identity_id" {
  value = azurerm_kubernetes_cluster.aks_cluster.kubelet_identity[0].object_id
}

output "kube_config" {
  description = "The Kube config credentials for the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks_cluster.kube_config[0].host
}

output "aks_name" {
  description = "The name of the AKS cluster"
  value       = azurerm_kubernetes_cluster.aks_cluster.name
}

output "resource_group_name" {
  description = "The resource group name where the AKS cluster is deployed"
  value       = azurerm_kubernetes_cluster.aks_cluster.resource_group_name
}