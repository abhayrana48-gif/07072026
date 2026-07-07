resource "azurerm_resource_group" "this" {
  for_each = var.abc
  name = var.value.name
  location = var.value.location
}