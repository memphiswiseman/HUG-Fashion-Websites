# Create a Netlify site
resource "netlify_site" "static_site" {
  name = var.site_name
}

# Deploy static files (Terraform Cloud will do this automatically)
resource "netlify_deploy" "static_site_deploy" {
  site_id = netlify_site.static_site.id
  path    = var.site_source_path
}

# Output the live URL
output "site_url" {
  description = "The live URL of the deployed Netlify site"
  value       = "https://${netlify_site.static_site.name}.netlify.app"
}
