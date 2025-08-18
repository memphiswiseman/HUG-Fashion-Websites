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
    organization = "hug-fashion-web"   # <- literal string
    workspaces {
      name = "hug-fashion-websites"   # <- literal string
    }
  }
}
