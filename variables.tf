variable "netlify_api_token" {
  description = "Netlify API token for authentication"
  type        = string
  sensitive   = true
}

variable "site_name" {
  description = "Exact Netlify Site name shown in the UI"
  type        = string
  default     = "hug-fashion-websites"
}

variable "netlify_team_slug" {
  description = "The slug of the Netlify team to use for the site"
  type        = string
  default     = ""   # Leave empty if personal account (no team)
}
