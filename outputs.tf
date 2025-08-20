output "netlify_site_url" {
  description = "Live Netlify site URL"
  value       = netlify_site.this.ssl_url
}
