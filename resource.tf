resource "azurerm_resource_group" "rg" {
  name     = "rg-case1"
  location = "East US"
}
resource "azurerm_storage_account" "storage" {
  name                     = "storageda2510"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_container" "container" {
  name                  = "blobcontainer1"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}

