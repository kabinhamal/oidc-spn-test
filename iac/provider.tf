# provider "azurerm" {
#   features {}
#   use_oidc = true
# }

terraform {
  required_version = ">=1.1.7" 
  required_providers {
    azurerm = {
      version = "~>3.33.0"
      source  = "hashicorp/azurerm"    
    }
#       source  = "EppO/environment"
#       version = "~>1.0"
#     }
#     local = {
#       source  = "hashicorp/local"
#       version = "~>2.0"
#     }
  }
  }



terraform {
  cloud {
    organization = "kabin"

    workspaces {
      name = "tfc_cloud2"
    }
  }
}



provider "azurerm" {
  tenant_id         = var.azure_tenant_id
  subscription_id   = var.azure_subscription_id
  client_id         = var.azure_client_id
  features {}
  use_oidc = true
  #oidc_token = data.environment_variables.all.items["TFC_WORKLOAD_IDENTITY_TOKEN"]
}

# Azure AD Provider
provider "azuread" {
  client_id       = var.azure_client_id
  tenant_id       = var.azure_tenant_id
  use_oidc         = true
}



