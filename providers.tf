# Provider Code
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }

  //  version         = ">=1.34.0"
  subscription_id         = var.subscription_id # current subscription Id          
  tenant_id               = var.tenant_id
#   client_id               = var.client_id
#   client_secret           = var.client_secret
#   client_certificate_path = var.client_certificate_path
}

provider "azuread" {
  //  version         = "=0.3.1"
  alias                   = "ad_lookup"
  tenant_id               = var.tenant_id
#   client_secret           = var.client_secret
#   client_certificate_path = var.client_certificate_path

}

