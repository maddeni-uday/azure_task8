locals {
  # Naming Convention for Resources
  rg_name           = "${var.name_pattern}-rg"
  aci_name          = "${var.name_pattern}-ci"
  acr_name          = "cmtr93253787mod8cr"
  aks_name          = "${var.name_pattern}-aks"
  keyvault_name     = "${var.name_pattern}-kv"
  redis_name        = "${var.name_pattern}-redis"
  docker_image_name = "cmtr-93253787-mod8-app"

  common_tags = {
    Creator = "maddeni_uday@epam.com"
  }
}
