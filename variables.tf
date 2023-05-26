variable "resource_group_name" {
  description = "Name of the Azure resource group Service"
  type        = string
  default ="rg_infraakash"
}
variable "location" {
  description = "Resource group location"
  type        = string
  default="australia-east"
}

variable "app_service_plan_name" {
  description = "Name of the Azure App Service Plan"
  type        = string
  default = "webapiappserviceplan"
}

variable "app_service_plan_sku" {
  description = "App Service Plan SKU (e.g., 'F1', 'S1', 'P1V2')"
  type        = string
  default ="Standard"
}

variable "app_service_name" {
  description = "Name of the Azure App Service"
  type        = string
   default ="webapiappservice"
}



variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string  
  default ="webapistorage"
}


variable "storage_account_tier" {
  description = "Storage Account tier (e.g., 'Standard', 'Premium')"
  type        = string
  default ="Standard"
}
