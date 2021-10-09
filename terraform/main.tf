# Azure resource groups
# ---------------------
module "resource_groups" {
  source = "./modules/resource_groups"

  friendly_name_prefix = var.friendly_name_prefix
  location             = var.location

  resource_group_name = var.resource_group_name

  tags = var.tags
}

# Azure container registry
# ---------------------
module "container_registry" {
  source = "./modules/container_registry"

  container_registry_name = var.container_registry_name
  container_registry_sku  = var.container_registry_sku

  location            = var.location
  resource_group_name = module.resource_groups.resource_group_name

  tags = var.tags
}

# Azure kubernetes cluster
# ---------------------
module "kubernetes_cluster" {
  source = "./modules/kubernetes_cluster"

  kubernetes_cluster_name = var.kubernetes_cluster_name

  location            = var.location
  resource_group_name = module.resource_groups.resource_group_name

  tags = var.tags
}



