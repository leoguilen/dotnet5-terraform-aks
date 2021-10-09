locals {
  # Azure Resource Groups
  # ---------------------
  resource_group_name = var.resource_group_name == null ? azurerm_resource_group.tfe_resource_group[0].name : var.resource_group_name
}

resource "azurerm_resource_group" "tfe_resource_group" {
  count = var.resource_group_name == null ? 1 : 0

  name     = "${var.friendly_name_prefix}-rg"
  location = var.location

  tags = var.tags
}
