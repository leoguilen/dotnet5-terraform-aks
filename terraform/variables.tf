# General
# -------
variable "friendly_name_prefix" {
  type        = string
  description = "(Required) Name prefix used for resources"
}

variable "container_registry_name" {
  type        = string
  description = "(Required) Name used for resource"
}

variable "kubernetes_cluster_name" {
  type        = string
  description = "(Required) Name used for resource"
}

variable "container_registry_sku" {
  default     = "Basic"
  type        = string
  description = "Sku used for container registry resource"
}

# Provider
# --------
variable "location" {
  default     = "East US"
  type        = string
  description = "(Required) Azure location name e.g. East US"
}

variable "resource_group_name" {
  default     = null
  type        = string
  description = "(Required) Azure resource group name"
}

# Tagging
# -------
variable "tags" {
  default     = {}
  type        = map(string)
  description = "Map of tags for resource"
}
