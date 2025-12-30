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

module "my-azure-service-bus" {
  source = "git::https://github.com/Mia-Platform-Experiments/tf-azure-servicebus.git"

  service_name = var.my-azure-service-bus_service_name
  resource_group_name = var.my-azure-service-bus_resource_group_name
  location = var.my-azure-service-bus_location
  performance_profile = var.my-azure-service-bus_performance_profile
  queue_names = var.my-azure-service-bus_queue_names
}
