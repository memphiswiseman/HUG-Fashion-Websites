terraform {
  required_version = "~> 1.10"

  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "0.2.3"
    }
  }

  cloud {
    organization = var.hcp_terraform_org
    workspaces {
      name = var.hcp_terraform_workspace
    }
  }
}
