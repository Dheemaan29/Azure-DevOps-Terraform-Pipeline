terraform {
  backend "azurerm" {
    resource_group_name  = "dheeman-test"
    storage_account_name = "backendsg"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}
