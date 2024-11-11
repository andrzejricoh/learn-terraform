terraform {
  # cloud {
  #   organization = "andrzej"

  #   workspaces {
  #     name = "learn-terraform"
  #   }
  # }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.5"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
  required_version = "~> 1.9"
}

provider "azurerm" {
  features {}
  subscription_id = "0087f549-34e3-4331-80e1-b3f04b146130"
}

provider "random" {}
