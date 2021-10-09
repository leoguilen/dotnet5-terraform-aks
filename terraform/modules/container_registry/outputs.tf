output "container_registry_name" {
  value       = var.container_registry_name
  description = "The name of the container registry"
}

output "container_registry_login_server" {
  value       = azurerm_container_registry.acr.login_server
  description = "The login server name of the container registry"
}
