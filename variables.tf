variable "netlify_api_token" {
  description = "Your Netlify API token (keep this secret)"
  type        = string
  sensitive   = true
}

variable "site_name" {
  description = "Exact Netlify site name as shown in the UI"
  type        = string
  default     = "hug-fashion"
}
