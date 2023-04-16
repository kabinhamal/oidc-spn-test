
variable "azure_subscription_id" {
  type        = string
  description = "The Subscription ID which should be used"
  default = "123"
}
variable "azure_client_id" {
  type        = string
  description = "The Client ID which should be used."
  default = "68" 
}

variable "azure_tenant_id" {
  type        = string
  description = "The Tenant ID should be used."
  default = "f94"
}

# variable "owner_id" {
#   type        = string
#   description = "(Optional) Object ID of owner to be assigned to service principal. Assigned to current user if not set."
#   default     = null
# }


variable "resource_group_name" {
  type        = string
  description = "(Optional) Name of resource group to create. Defaults to oidc-test."
  default     = "oidc-test-rgp"
}

variable "location" {
  type        = string
  description = "(Optional) Azure region to use. Defaults to East US."
  default     = "eastus"
}
