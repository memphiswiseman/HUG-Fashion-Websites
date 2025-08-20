variable "netlify_token" {
  description = "Netlify Personal Access Token"
  type        = string
  sensitive   = true
}

variable "github_branch" {
  description = "Branch to deploy from GitHub"
  type        = string
  default     = "main"  # optional, default is main
}
