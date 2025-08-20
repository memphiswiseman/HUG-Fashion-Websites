output "site_url" {
  description = "The URL of the Netlify site"
  value       = "${var.site_name}.netlify.app"
}

output "site_id" {
  description = "The ID of the Netlify site"
  value       = data.netlify_site.this.id
}
