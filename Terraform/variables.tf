variable "base_name" {
  description = "Base name for the Netlify site (will be suffixed to ensure uniqueness)"
  type        = string
  default     = "hug-fashion"
}

variable "netlify_token" {
  description = "Netlify Personal Access Token (use environment variable NETLIFY_TOKEN)"
  type        = string
  sensitive   = true
  default     = null
}
