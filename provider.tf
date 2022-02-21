#
# Provider file: is not required to have a separate file for providers (optional)
# You can have all the providers in the main.tf
# You can go to: https://registry.terraform.io/ to search your provider
#

# Configure the Microsoft Azure Provider
# 1. You can provide here azure configuration for authentication
# 2. You can login with azure CLI for authentication
#
provider "azurerm" {
  features {}
#   subscription_id = var.subscriptionId
#   client_id = var.clientId
#   client_secret = var.clientSecret
#   tenant_id = var.tenantId
}

# Configure the state file to be stored in Azure remotely
# This is a good practice not to have locally the terraform state file
#
terraform {
  backend "azurerm" {
    resource_group_name  = "example-resources"
    storage_account_name = "mystorageaccount88sdasd"
    container_name       = "satate"
    key                  = "dev.terraform.tfstate"
  }
}