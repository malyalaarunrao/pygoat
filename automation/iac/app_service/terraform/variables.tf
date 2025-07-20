variable "org" {
  type    = string
  default = "arun"
}

variable "app" {
  description = "The name of the application that uses resources"
  type        = string
  default     = "devsecopsapp"
}

variable "stage" {
  description = "The stage of the application"
  type        = string
  default     = "dev"
}

variable "region" {
  description = "The Azure region where resources will be created"
  type        = string
  default     = "westus2"

}

variable "enable_telemetry" {
  description = "Enable or disable telemetry for the module"
  type        = bool
  default     = false
}

variable "python_version" {
  description = "value of python version to be used in app service"
  type        = string
  default     = "3.12"
}

variable "app_service_sku" {
  description = "SKU (pricing tier) of the App Service Plan (e.g., F1, B1, S1)"
  type        = string
  default     = "F1"  # or leave this out if you want it to be required
}
