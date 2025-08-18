output "site_name" {
  description = "Netlify site name (subdomain)"
  value       = netlify_site.site.name
}

output "site_id" {
  description = "Netlify site ID"
  value       = netlify_site.site.id
}

output "live_url" {
  description = "Production URL for the site"
  value       = "https://${netlify_site.site.name}.netlify.app"
}