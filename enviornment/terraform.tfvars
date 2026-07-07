rgs = {
    netflix ={
          name = "rgnetflix"
         location = "westus"
    }
        starbuck ={
          name = "rgstarbuck"
         location = "westus"
    }
}

storage = {
    storage1 = {
          name = "storage"
  location = "westus"
  resource_group_name = "rgnetflix"
  account_tier = "standard"
  account_replication_type = "GRS"
    }
}

vnets = {
    vnet1 = {
        name = "vnetnetflix"
  location = "westus"
  resource_group_name = "rgnetflix"
  address_space = ["10.0.0.0/16"]
    }
}

subnets = {
    subnet1 = {
         name = "netflixsubnet"
    resource_group_name = "rgnetflix"
    virtual_network_name = "vnetnetflix"
    address_prefixes = ["10.0.1.0/24"]
    }
      subnet2 = {
         name = "starbucksubnet"
    resource_group_name = "rgstarbuck"
    virtual_network_name = "vnetnetflix"
    address_prefixes = ["10.0.2.0/24"]
    }
}