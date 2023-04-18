
variable "azure_subscription_id" {
  type        = string
  description = "The Subscription ID which should be used"
  default = "17983203-31aa-4998-a994-16bcb84f3dff"
}
variable "azure_client_id" {
  type        = string
  description = "The Client ID which should be used."
  default = "6849b684-2d1e-415b-ac28-44d9e6f9e35b" 
}

variable "azure_tenant_id" {
  type        = string
  description = "The Tenant ID should be used."
  default = "f946600a-6e91-4c31-a96f-95977fd26317"
}

variable "TFC_AZURE_PROVIDER_AUTH" {
  type        = bool
  description = "The Tenant ID should be used."
  default = true
}

variable "TFC_AZURE_RUN_CLIENT_ID	" {
  type        = string
  description = "The Tenant ID should be used."
  default = "6849b684-2d1e-415b-ac28-44d9e6f9e35b"
}

variable "TFC_AZURE_RUN_CLIENT_ID	" {
  type        = string
  description = "The Tenant ID should be used."
  default = "api://AzureADTokenExchange"
}

# variable "owner_id" {
#   type        = string
#   description = "(Optional) Object ID of owner to be assigned to service principal. Assigned to current user if not set."
#   default     = null
# }


variable "resource_group_name" {
  type        = string
  description = "(Optional) Name of resource group to create. Defaults to oidc-test."
  default     = "oidc-test-rsgroup"
}

variable "location" {
  type        = string
  description = "(Optional) Azure region to use. Defaults to East US."
  default     = "eastus"
}
