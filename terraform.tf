
terraform {
  cloud {
    organization = "petya-gavrilova"
    workspaces {
      name = "test"
    }
  }

required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}
