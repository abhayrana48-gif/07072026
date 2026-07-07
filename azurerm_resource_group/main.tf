resource "azurerm_resource_group" "rgs" {
  for_each = var.rgs
  name = var.value.name
  location = var.value.location
}
