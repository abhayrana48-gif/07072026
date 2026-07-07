resource "azurerm_storage_account" "this" {
  for_each = var.def
  name = var.value.name
  location = var.value.location
  resource_group_name = var.value.resource_group_name
  account_tier = var.value.access_tier
  account_replication_type = var.value.account_replication_type
}