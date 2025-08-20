provider "netlify" {
  token = var.netlify_token
}

resource "netlify_site" "this" {
  name = "hug-fashion-websites"

  repo {
    provider      = "github"
    branch        = var.github_branch # optional
    build_command = ""                 
    dir           = "site"             
  }
}
