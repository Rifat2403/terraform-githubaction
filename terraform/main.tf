terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.71.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "0a413d52-2fff-488e-9853-ed319e227409"
  client_id       = "d749a832-65e9-4f98-b47b-47cf055be37e"
  client_secret   = "6ZY8Q~XeARSjGmG65aRJRSEEaukKOqOwbsPWzarS"
  tenant_id       = "ca674d77-eb03-4343-8db4-24f8bb0dc44e"
  features {}
}
terraform {
  backend "azurerm" {
    resource_group_name   = "CI_CD"
    storage_account_name  = "terraformstatecicd123"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "appgrp" {
  name     = "app-grp"
  location = "North Europe"
}
