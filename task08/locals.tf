locals {
  # Naming Convention for Resources
  rg_name           = "${var.name_pattern}-rg"
  aci_name          = "${var.name_pattern}-ci"
  aks_name          = "${var.name_pattern}-aks"
  keyvault_name     = "${var.name_pattern}-kv"
  redis_name        = "${var.name_pattern}-redis"
  docker_image_name = "${var.name_pattern}-app"


  common_tags = {
    Creator = "maddeni_uday@epam.com"
  }
}
