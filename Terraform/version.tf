terraform {
  required_version = ">= 1.5.0"

  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.4"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
  }

  cloud {
    organization = "hug-fashion-web"   # your TFC org
    workspaces {
      name = "hug-fashion-websites"    # your TFC workspace
    }
  }
}
