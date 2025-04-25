locals {
  # Naming Convention for Resources
  name_prefix       = "cmtr-93253787-mod8"
  rg_name           = "${local.name_prefix}-rg"
  aci_name          = "${local.name_prefix}-ci"
  acr_name          = "cmtr93253787mod8cr"
  aks_name          = "${local.name_prefix}-aks"
  keyvault_name     = "${local.name_prefix}-kv"
  redis_name        = "${local.name_prefix}-redis"
  docker_image_name = "${local.name_prefix}-app"


  # Resource Tags
  common_tags = {
    Creator = "maddeni_uday@epam.com"
  }
}
