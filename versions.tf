terraform {
  required_version = ">= 1.6.0"

  # Remote state in Terraform Cloud (HCP Terraform)
  cloud {
    organization = "hug-fashion-web"   # Your Terraform Cloud org
    workspaces {
      name = "hug-fashion-websites"    # Your workspace
    }
  }

  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2"
    }
  }
}
