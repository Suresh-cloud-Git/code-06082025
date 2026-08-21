resource "azurerm_resource_group" "names" {
    for_each = var.rgs
    name = each.key
    location = each.value
  
}

variable "rgs" {
    default = {
        dev1 ="eastus"
        prod1 ="westus"
        stage1="centralindia"
        uat1="eatus"
        pte="westus"
    }
  
}
resource "azurerm_storage_account" "stgname" {
    name                     = "jaadhukastorage11uat"
  resource_group_name      = "rg-terraformstate2607"
  location                 = "centralindia"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  
}

resource "azurerm_storage_account" "delete" {
    name                     = "jaadhukastorage11-delete"
  resource_group_name      = "rg-terraformstate2607"
  location                 = "centralindia"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  
}
