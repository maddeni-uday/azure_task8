output "aci_fqdn" {
  description = "FQDN of the App running in Azure Container Instance"
  value       = module.aci.fqdn
}

output "aks_lb_ip" {
  description = "Load Balancer IP address of the App running in AKS"
  value       = module.aks.kube_config
  sensitive   = true
}