provider "azurerm" {
  version = "=1.36.1"
  subscription_id = var.AZURE_SUBSCRIPTION_ID
  client_id       = var.AZURE_CLIENT_ID
  client_secret   = var.AZURE_CLIENT_SECRET
  tenant_id       = var.AZURE_TENENT_ID
}

variable "customer" {
}

variable "project" {
}

variable "env" {
}

variable "AZURE_SUBSCRIPTION_ID" {
}

variable "AZURE_CLIENT_ID" {
}

variable "AZURE_CLIENT_SECRET" {
}

variable "AZURE_TENENT_ID" {
}
