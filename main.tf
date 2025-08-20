provider "netlify" {
  token = var.netlify_api_token
}

# Optional: get team if using a team account
data "netlify_team" "default" {
  count = var.netlify_team_slug != "" ? 1 : 0
  slug  = var.netlify_team_slug
}

# Get the existing Netlify site
data "netlify_site" "this" {
  name      = var.site_name
  team_slug = length(data.netlify_team.default) > 0 ? data.netlify_team.default[0].slug : null
}
