resource "azurerm_app_service" "app_service" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id
  # Add other configuration options as needed
  #app_settings = var.appsrv_settings
  site_config {

    dotnet_framework_version = "v6.0"
    always_on                = true
  }


  identity {
    type = "SystemAssigned"
  }
}


