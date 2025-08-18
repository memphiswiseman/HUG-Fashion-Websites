terraform {
  cloud {
    organization = "hug-fashion-web"   # ✅ your TFC org

    workspaces {
      name = "hug-fashion-websites"    # ✅ your TFC workspace
    }
  }

  required_providers {
    netlify = {
      source  = "netlify/netlify"
      version = "~> 0.1.0"   # ✅ latest stable
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.5"
    }
    null = {
      source  = "hashicorp/null"
    }
    archive = {
      source  = "hashicorp/archive"
    }
  }

  required_version = ">= 1.6.0"
}
