terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.0"
    }
  }
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg_aakash"
    storage_account_name = "mgmtstrgacc"
    container_name       = "mgmtcontainer"
    key                  = "terraform.tfstate"
  }
}


provider "azurerm" {
  features {}
}

# Generate a random integer to create a globally unique name
resource "random_integer" "ri" {
  min = 10000
  max = 99999
}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

module "app_service_plan" {
  source                = "./modules/appServicePlan"
  app_service_plan_name = "webapp-asp-${random_integer.ri.result}"
  resource_group_name   = azurerm_resource_group.resource_group.name
  location              = azurerm_resource_group.resource_group.location
}

module "app_service" {
  source              = "./modules/appService"
  app_service_name    = "webapp-${random_integer.ri.result}"
  resource_group_name = azurerm_resource_group.resource_group.name
  location            = azurerm_resource_group.resource_group.location
  app_service_plan_id = module.app_service_plan.app_service_plan_id
}

module "storage_account" {
  source               = "./modules/storageAccount"
  storage_account_name = "webappstoreage${random_integer.ri.result}"
  resource_group_name  = azurerm_resource_group.resource_group.name
  location             = azurerm_resource_group.resource_group.location
  storage_account_tier = var.storage_account_tier
}


