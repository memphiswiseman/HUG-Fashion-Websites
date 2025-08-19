terraform {
  required_version = "~> 1.10"

  required_providers {
    netlify = {
      source  = "AegirHealth/netlify"
      version = "0.6.12"
    }
  }

  cloud {
    organization = var.hcp_terraform_org
    workspaces {
      name = var.hcp_terraform_workspace
    }
  }
}
