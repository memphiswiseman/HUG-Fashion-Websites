provider "netlify" {
  token = var.netlify_api_token
}

# Reference existing Netlify site by name (personal account)
data "netlify_site" "this" {
  name = var.site_name
}
