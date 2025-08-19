terraform {
  required_version = "~> 1.10"
  required_providers {
    netlify = {
      source  = "AegirHealth/netlify"
      version = "~> 0.5.0"
    }
  }
  cloud {
    organization = var.hcp_terraform_org
    workspaces {
      name = var.hcp_terraform_workspace
    }
  }
}

provider "netlify" {
  token = var.netlify_token
}

resource "netlify_site" "static_site" {
  name = var.site_name
}

resource "netlify_deploy" "static_site_deploy" {
  site_id = netlify_site.static_site.id
  path    = var.site_source_path
}

output "site_url" {
  description = "The live URL of the deployed Netlify site"
  value       = "https://${netlify_site.static_site.name}.netlify.app"
}