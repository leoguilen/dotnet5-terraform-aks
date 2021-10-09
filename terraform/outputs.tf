# General
# -------
output "resource_group_name" {
  value       = module.resource_groups.resource_group_name
  description = "The name of the resource group into which to provision all resources"
}

output "container_registry_name" {
  value       = module.container_registry.container_registry_name
  description = "The name of the container registry resource"
}

output "container_registry_login_server" {
  value       = module.container_registry.container_registry_login_server
  description = "The login server name of the container registry"
}

output "kubernetes_cluster_id" {
  value = module.kubernetes_cluster.id
}

output "kubernetes_cluster_kube_config" {
  value     = module.kubernetes_cluster.kube_config
  sensitive = true
}

output "kubernetes_cluster_client_key" {
  value = module.kubernetes_cluster.client_key
}

output "kubernetes_cluster_client_certificate" {
  value = module.kubernetes_cluster.client_certificate
}

output "kubernetes_cluster_cluster_ca_certificate" {
  value = module.kubernetes_cluster.cluster_ca_certificate
}

output "kubernetes_cluster_host" {
  value = module.kubernetes_cluster.host
}
