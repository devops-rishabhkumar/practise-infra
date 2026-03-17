resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform"
  location = "eastus"
}

resource "azurerm_storage_account" "sa" {
  name                     = "stterraform"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container2" {
    name = "tf.state"
    container_access_type = "private"
}

resource "azurerm_storage_container" "container1" {
    name = "tf.state"
    container_access_type = "public"

}

resource "azurerm_storage_container" "container3" {
    name = "tf.state"
    container_access_type = "private"
}
