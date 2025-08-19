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
    organization = hug-fashion-web  # replace with your HCP org
    workspaces {
      name = hug-fashion-websites  # 
    }
  }
}
