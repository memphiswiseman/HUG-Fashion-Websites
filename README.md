HUG-Fashion-Websites Terraform + Netlify Deployment
Overview

This project demonstrates how to deploy a static website on Netlify using Terraform, with Terraform Cloud (HCP) remote state. The setup is fully reproducible — anyone can clone the repo, configure their token, and deploy the site.

The static site is minimal but fully functional, using HTML, CSS, and JS in the site/ folder.

Project Structure
HUG-Fashion-Websites/
├── site/                  # Static website
│   ├── index.html
│   ├── style.css
│   └── script.js
├── main.tf                # Terraform provider config
├── variables.tf           # Terraform variables
├── outputs.tf             # Terraform outputs
├── versions.tf            # Terraform required version + Cloud backend
├── .gitignore             # Ignore local state & secrets
└── README.md              # Project documentation

Prerequisites

Terraform ≥ 1.5.0

Terraform Cloud account

Workspace: hug-fashion-websites

Netlify account

Personal access token (keep it secret)

GitHub repository

Linked to Netlify for automatic deployment

Terraform Cloud Setup

Navigate to your Terraform Cloud workspace: hug-fashion-websites

Go to Variables → Environment Variables.

Add the following:

Key	Value	Sensitive
netlify_api_token	<your Netlify token>	✅ Yes

Terraform Cloud will automatically use this token during runs.

Variables
Variable	Description	Default
netlify_api_token	Netlify API token (keep secret)	-
site_name	Netlify site subdomain	hug-fashion-websites

You can override site_name if deploying a different Netlify site.

Terraform Commands:

Initialize Terraform
terraform init

Preview changes
terraform plan

Apply deployment
terraform apply


Outputs will show:

site_id → the Netlify site identifier

site_url → the live site URL

Netlify Configuration

Base directory: leave empty

Publish directory: site/

Build command: leave empty (static site)

Functions directory: leave default

Push changes to your GitHub repo — Netlify will automatically build and deploy your site.

Live Demo

Once applied, your site will be available at:

https://<site_name>.netlify.app


Replace <site_name> with the value of your site_name variable.

Notes

Fully Reproducible: No hardcoded team slug, no secrets in repo.

Terraform Cloud Remote State: Keeps your state safe and shareable across teams.

Static Site Deployment: Works for any HTML/CSS/JS project in the site/ folder.

Optional: Example terraform.tfvars

You can create a terraform.tfvars file locally to provide your token:

netlify_api_token = "<YOUR_NETLIFY_TOKEN>"
site_name         = "hug-fashion-websites"


Do not commit this file to GitHub.