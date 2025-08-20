provider "netlify" {
  token = var.netlify_token
}

resource "netlify_site" "this" {
  name = "hug-fashion"

  repo {
    provider      = "github"
    branch        = var.github_branch 
    build_command = ""                 
    dir           = "site"             
  }
}
