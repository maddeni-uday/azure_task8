output "aci_fqdn" {
  description = "FQDN of the App running in Azure Container Instance"
  value       = module.aci.fqdn
}

output "aks_lb_ip" {
  description = "Load Balancer IP address of the App running in AKS"
  value       = module.aks.kube_config
  sensitive   = true
}

output "acr_login" {
  value = module.acr.login_server
}

output "managed_identity" {
  value = module.aks.kubelet_identity_id
}

output "managed_id" {
  value = module.aks.user_Assigned_identity
}

output "user_guid" {
  description = "value"
  value       = module.aks.user_guid
}

output "kubeconfig" {
  description = "value"
  value       = module.aks.kube_config
  sensitive   = true
}