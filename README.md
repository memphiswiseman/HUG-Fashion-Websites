# Deploying a Static Website to Netlify with Terraform and HCP Terraform

This project uses Terraform to deploy a static website to Netlify, with state managed securely in HCP Terraform (Terraform Cloud). The setup is designed to be pushed to a public GitHub repository and executed via Terraform Cloud.

## Prerequisites
- **Terraform**: Version 1.10 or higher. Install from [HashiCorp's website](https://www.terraform.io/downloads.html).
- **Netlify Account**: Sign up at [netlify.com](https://www.netlify.com) and create a Personal Access Token in User Settings > Applications > Personal Access Tokens.
- **HCP Terraform Account**: Sign up at [app.terraform.io](https://app.terraform.io) and create an organization and workspace.
- **GitHub Account**: For hosting the repository.

## Setup Instructions

### 1. Clone the Repository
```bash
git clone <your-repo-url>
cd <repo-name>