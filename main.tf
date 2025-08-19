# Generate a unique random name for the site
resource "random_pet" "site" {}

# Create a Netlify site with a randomized name
resource "netlify_site" "static_site" {
  name = "my-static-site-${random_pet.site.id}"
}

# Deploy static files using Netlify CLI
resource "null_resource" "deploy_static_site" {
  # Re-run deploy if site ID changes or folder content changes
  triggers = {
    site_id  = netlify_site.static_site.id
    dir_hash = filesha256(var.site_source_path)
  }

  provisioner "local-exec" {
    command = "netlify deploy --dir=${var.site_source_path} --site=${self.triggers.site_id} --prod"
    environment = {
      NETLIFY_AUTH_TOKEN = var.netlify_token
    }
  }
}

# Output the live URL
output "site_url" {
  description = "The live URL of the deployed Netlify site"
  value       = netlify_site.static_site.ssl_url
}
