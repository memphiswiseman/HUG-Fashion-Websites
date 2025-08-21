output "site_id" {
  description = "The Netlify site ID"
  value       = data.netlify_site.this.id
}

output "site_url" {
  description = "The Netlify site URL"
  value       = "https://${var.site_name}.netlify.app"
}
