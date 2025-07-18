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

