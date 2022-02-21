# 
# Define here all the logic of your infrastructure
# Resource: It is used to ask for a resource on the provider (Create or Update)
# Data: It is used to read from a particular resource of the provider
#

# Ex. Create a resource group in azure
resource "azurerm_resource_group" "rg" {
  name     = "example-resources"
  location = var.location
  tags = var.tags
}

# Asking terraform to read this resource from Azure
data "azurerm_resource_group" "rg" {
  name     = "JDgroup"
}