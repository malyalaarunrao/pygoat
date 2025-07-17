module "appi" {
  source = "Azure/avm-res-insights-component/azurerm"

  #required variables
  name                = module.naming.application_insights.name
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.region
  workspace_id        = module.log_analytics_workspace.resource_id

  #Optional variables
  application_type     = "web"
  daily_data_cap_in_gb = 1
  retention_in_days    = 30
  enable_telemetry     = var.enable_telemetry
}