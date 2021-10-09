# General
# -------
variable "container_registry_name" {
  type        = string
  description = "(Required) Name used for resource"
}

variable "container_registry_sku" {
  default     = "Basic"
  type        = string
  description = "Sku used for resource"
}

# Provider
# --------
variable "location" {
  type        = string
  description = "(Required) Azure location name e.g. East US"
}

variable "resource_group_name" {
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
