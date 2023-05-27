variable "resource_group_name" {
  description = "Name of the Azure resource group Service"
  type        = string
  default     = "rg_infraakash"
}
variable "location" {
  description = "Resource group location"
  type        = string
  default     = "australiaeast"
}

variable "app_service_plan_name" {
  description = "Name of the Azure App Service Plan"
  type        = string
  default     = "webapiappserviceplan"
}


variable "app_service_name" {
  description = "Name of the Azure App Service"
  type        = string
  default     = "aakashwebapiappservice"
}


variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
  default     = "webapiaakashstorage"
}


variable "storage_account_tier" {
  description = "Storage Account tier (e.g., 'Standard', 'Premium')"
  type        = string
  default     = "Standard"
}
