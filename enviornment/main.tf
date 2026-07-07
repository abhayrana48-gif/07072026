module "rg" {
  source = "../../azurerm_resource_group"
  abc = var.rgs
}

module "storage" {
    depends_on = [ module.rg ]
  source = "../../azurerm_storage_account"
  def = var.storage
}


module "vnet" {
    depends_on = [ module.storage ]
    source = "../../azurerm_virtual_network"
  ghi = var.vnets
}


module "subnet" {
    depends_on = [ module.vnet ]
    source = "../../azurerm_subnet"
  jkl = var.subnets
}

