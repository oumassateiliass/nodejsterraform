/*terraform {
  required_version = ">= 0.11"
  
  backend "azurerm" {
    storage_account_name = "__terraformstorageaccount__"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
    access_key           = "__storagekey__"
    features{
    }
  }
}

provider "azurerm" {
  features {
  }
}

resource "azurerm_resource_group" "dev" {
  name     = "PULTerraform"
  location = "West Europe"
}

resource "azurerm_app_service_plan" "dev" {
  name                = "__appserviceplan__"
  location            = "${azurerm_resource_group.dev.location}"
  resource_group_name = "${azurerm_resource_group.dev.name}"

  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "dev" {
  name                = "__appservicename__"
  location            = "${azurerm_resource_group.dev.location}"
  resource_group_name = "${azurerm_resource_group.dev.name}"
  app_service_plan_id = "${azurerm_app_service_plan.dev.id}"
}*/
terraform {
  required_version = ">= 0.11"
  
  backend "azurerm" {
    storage_account_name = "__terraformstorageaccount__"
    container_name       = "terraform"
    key                  = "terraform.tfstate"
    access_key           = "__storagekey__"
    features{
    }
  }
}

provider "azurerm" {
  version = "2.0.0"
  features {
  }
}

#resource "azurerm_resource_group" "dev" {
#  name     = "PULTerraform"
#  location = "East US"
#}

resource "azurerm_app_service_plan" "dev" {
  name                = "__appserviceplan__"
  location            = "East US"
  resource_group_name = "__terraformstoragerg__"

  sku {
    tier = "Free"
    size = "F1"
  }
}

resource "azurerm_app_service" "dev" {
  name                = "__appservicename__"
  location            = "East US"
  resource_group_name = "__terraformstoragerg__"
  app_service_plan_id = "${azurerm_app_service_plan.dev.id}"
}