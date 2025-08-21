
HUG-Fashion-Websites Terraform + Netlify Deployment
Overview

This project demonstrates how to deploy a static website on Netlify using Terraform, with Terraform Cloud (HCP) remote state.

The setup is fully reproducible — anyone can clone the repo, set their token, and deploy the site.

The static site is minimal but fully functional, using HTML, CSS, and JS in the site/ folder.



## 📂 Project Structure

```plaintext
HUG-Fashion-Websites/
├── site/
│   ├── index.html
│   ├── style.css
│   ├── images/
│   ├── js/
│   └── css/
├── main.tf
├── variables.tf
├── outputs.tf
├── versions.tf
├── .gitignore
├── README.md
└── netlify-arch.png


Prerequisites:

Terraform ≥ 1.5.0

Terraform Cloud account

Workspace: hug-fashion-websites

Netlify account

Personal access token (keep it secret)

GitHub repository

Linked to Netlify for automatic deployment



``` Terraform Cloud Setup:

Navigate to your Terraform Cloud workspace: hug-fashion-websites

Go to Variables → Environment Variables.

Add the following:

Key	                 Value	                Sensitive
netlify_api_token	<your Netlify token>	✅ Yes

Terraform Cloud will automatically use this token during runs.


``` Netlify Configuration

Base directory: leave empty

Publish directory: site/

Build command: leave empty (static site)

Functions directory: leave default

Push changes to your GitHub repo — Netlify will automatically build and deploy your site.

