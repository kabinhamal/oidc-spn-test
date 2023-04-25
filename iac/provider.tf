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
  }
#   backend "azurerm" {
#     use_oidc         =        true
#     use_azuread_auth      =        true
#     key                   =   "terraform.tfstate"
#   }
}


terraform {
  cloud {
    organization = "hashi-kabin"

    workspaces {
      name = "tfc_cloud"
    }
  }
}



provider "azurerm" {
  tenant_id         = var.azure_tenant_id
  subscription_id   = var.azure_subscription_id
  client_id         = var.azure_client_id
  features {}
  use_oidc = true
}

# Azure AD Provider
provider "azuread" {
  client_id       = var.azure_client_id
  tenant_id       = var.azure_tenant_id
  use_oidc         = true
}



