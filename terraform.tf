terraform {
##123
backend "remote" {
hostname = "app.terraform.io"
organization = "healthy-organ"
workspaces {
name = "remote-backend-fromVCSrun"
}
}
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
tfe = {
      version = "~> 0.48.0"
    }

  }
}
#
