output "site_id" {
  description = "The Netlify site ID"
  value       = var.site_name   # Or leave blank if you don't need the ID
}

output "site_url" {
  description = "The Netlify site URL"
  value       = "https://${var.site_name}.netlify.app"
}
