output "site_url" {
  description = "The live URL of the Netlify site"
  value       = data.netlify_site.this.ssl_url
}

output "site_id" {
  description = "The Netlify site ID"
  value       = data.netlify_site.this.id
}
