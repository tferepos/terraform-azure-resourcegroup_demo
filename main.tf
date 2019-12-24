variable "subscription_id" {
  description = "The subscription_id"
}
variable "client_id" {
  description = "The client_id"
}
variable "client_secret" {
  description = "The client_secret"
}
variable "tenant_id" {
  description = "The tenant_id"
}

provider "azurerm" {
    subscription_id = "${var.subscription_id}"
    client_id       = "${var.client_id}"
    client_secret   = "${var.client_secret}"
    tenant_id       = "${var.tenant_id}"
}

resource "azurerm_resource_group" "myterraformgroup" {
    name     = "myResourceGroup"
    location = "eastus"

    tags = {
        environment = "Terraform Demo"
    }
}
