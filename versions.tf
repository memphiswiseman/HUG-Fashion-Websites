terraform {
  required_version = ">= 1.6.0"

  # Remote state in Terraform Cloud
  cloud {
    organization = "hug-fashion-web"

    workspaces {
      name = "hug-fashion-websites"
    }
  }

  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "0.2.3"
    }
  }
}
