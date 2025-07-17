terraform{
    required_version = ">= 1.12.2"
    required_providers {
      azurerm = {
        source  = "hashicorp/azurerm"
        version = ">= 4.0"
      }
    }

    #configure terraform
    cloud {
      organization = "arunraomalyala"
        workspaces {
            name = "dev-arun"
        }
    }
}