variable "hcp_terraform_org" {
  description = "HCP Terraform organization name"
  type        = string
}

variable "hcp_terraform_workspace" {
  description = "HCP Terraform workspace name"
  type        = string
}

variable "netlify_token" {
  description = "Netlify Personal Access Token"
  type        = string
  sensitive   = true
}

variable "site_source_path" {
  description = "Path to the static site source files"
  type        = string
  default     = "./site"
}
