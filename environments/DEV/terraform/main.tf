terraform {
  cloud {
    organization = "mia-platform"
    workspaces {
      name = "terraform-test-sandbox"
    }
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}
