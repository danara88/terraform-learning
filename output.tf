#
# Application terraform outputs
# This file are used to delcare and define system outputs
#

# Get the location property of my resource group
output "rg_location" {
    value = azurerm_resource_group.rg.location
}

# Reading data (Data source)
output "jd_group_location" {
    value = data.azurerm_resource_group.rg.location
}