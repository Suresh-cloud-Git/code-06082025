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