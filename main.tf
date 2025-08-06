resource "azurerm_resource_group" "names" {
    for_each = var.rgs
    name = each.key
    location = each.value
  
}

variable "rgs" {
    default = {
        dev ="eastus"
        prod ="westus"
        stage="centralindia"
    }
  
}
resource "azurerm_storage_account" "stgname" {
    name                     = "storageaccountname"
  resource_group_name      = "rg-terraformstate2607"
  location                 = "stgaccnt26072025"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  
}