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
  backend "azurerm" {
    use_oidc         = true
    use_azuread_auth = true
#     resource_group_name   =       "tfstate"
#     storage_account_name  =       "tfstate15930"
#     container_name        =        "tfstate"
#     key                   =        "terraform.tfstate"
  }
}


provider "azurerm" {
  tenant_id         = var.azure_tenant_id
  subscription_id   = var.azure_subscription_id
  client_id         = var.azure_client_id
  client_secret     = var.azure_client_secret

  features {}
  use_oidc = true
}

# Azure AD Provider
provider "azuread" {
  client_id       = var.azure_client_id
  client_secret   = var.azure_client_secret
  tenant_id       = var.azure_tenant_id
}



