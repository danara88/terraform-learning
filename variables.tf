#
# variables.tf
# This file is used to create variables that are going to be used
#

# String variable
variable "prefix" {
    type = string
    description = "(optional) describe your variable"
}

# Number variable
variable "age" {
    type = number
    description = "This is a number"
}

# Map variable
variable "tags" {
    type = map
    default = {
        environment = "dev",
        cost_centre = "5001"
    }
}

# Set default values to variables
variable "location" {
    description = "location where your resource needs to provision in azure"
    default = "Default value"
}

# Azure configuration variables
variable "subscriptionId" {
    type = string
    description = "Subscription Azure ID"
}

variable "clientId" {
    type = string
    description = "Client ID Azure"
}

variable "clientSecret" {
    type = string
    description = "Client Secret Azure"
}

variable "tenantId" {
    type = string
    description = "Tenant ID Azure"
}




