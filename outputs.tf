# outputs.tf
output "site_url" {
  description = "The Netlify site URL"
  value       = "https://${var.site_name}.netlify.app"
}

output "site_id" {
  description = "The Netlify site ID"
  value       = var.site_name
}
