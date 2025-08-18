variable "tfc_organization" {
  description = "HCP Terraform organization name"
  type        = string
}

variable "tfc_workspace" {
  description = "HCP Terraform workspace name"
  type        = string
}

variable "base_name" {
  description = "Base name for the Netlify site (will be suffixed to ensure uniqueness)"
  type        = string
  default     = "hug-ibadan-demo"
}

variable "netlify_token" {
  description = "Netlify Personal Access Token (use environment variable NETLIFY_TOKEN if possible)"
  type        = string
  sensitive   = true
  default     = null
}