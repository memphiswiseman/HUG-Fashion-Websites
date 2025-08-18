variable "netlify_token" {
  type        = string
  description = "Netlify personal access token"
  sensitive   = true
}

variable "base_name" {
  type        = string
  description = "Base name for Netlify site"
}

variable "tfc_organization" {
  type    = string
  default = "hug-fashion-web"
}

variable "tfc_workspace" {
  type    = string
  default = "hug-fashion-websites"
}
