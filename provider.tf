terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
  required_version = ">= 1.0.0"

  
}

provider "azurerm" {

  features {}

  subscription_id = "8620618b-e18e-453b-abb0-ee127f4295c8"
}


