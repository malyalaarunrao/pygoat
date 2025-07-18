resource "azurerm_storage_account" "bad_sa" {
  name                     = "trivydemostorageaccount"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  min_tls_version            = "TLS1_0"
  https_traffic_only_enabled = false
}

resource "azurerm_network_security_group" "open_nsg" {
  name                = "allow-all"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_network_security_rule" "open_ingress" {
  name                        = "allow-all"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.open_nsg.name

  priority                   = 100
  direction                  = "Inbound"
  access                     = "Allow"
  protocol                   = "*"
  source_port_range          = "*"
  destination_port_range     = "*"
  source_address_prefix      = "0.0.0.0/0"
  destination_address_prefix = "*"
}

resource "azure_key_vault" "bad_kv" {
  name                = "trivydemokeyvault"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = "standard"

  purge_protection_enabled   = false
  soft_delete_retention_days = 0
}