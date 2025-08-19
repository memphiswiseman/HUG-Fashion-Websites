# Randomized site name
resource "random_pet" "site" {}

# Create a Netlify site
resource "netlify_site" "demo" {
  name = "challenge-site-${random_pet.site.id}"
}

# Deploy static files (from /static folder)
resource "netlify_deploy" "demo" {
  site_id = netlify_site.demo.id
  dir     = "static"
}

# Bonus: add an env var in Netlify
resource "netlify_env_var" "example" {
  site_id = netlify_site.demo.id
  key     = "APP_MODE"
  value   = "production"
}

# Output site URL
output "site_url" {
  value = netlify_site.demo.ssl_url
}
