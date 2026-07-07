module "rg" {
  source = "../azurerm_resource_group"
  rgs = var.rgs
}

module "storage" {
    depends_on = [ module.rg ]
  source = "../azurerm_storage_account"
  storage = var.storage
}


module "vnet" {
    depends_on = [ module.storage ]
    source = "../azurerm_virtual_network"
  vnets = var.vnets
}


module "subnet" {
    depends_on = [ module.vnet ]
    source = "../azurerm_subnet"
  subnets = var.subnets
}

