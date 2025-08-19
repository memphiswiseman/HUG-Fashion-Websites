terraform {
  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  cloud {
    organization = "netlify-org" # your HCP org name
    workspaces {
      name = "netlify-deploy"   # your HCP workspace
    }
  }
}
