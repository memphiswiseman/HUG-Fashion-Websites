# Generate a random suffix for uniqueness
resource "random_pet" "suffix" {
  length = 2
}

# Full site name
locals {
  site_name = "${var.base_name}-${random_pet.suffix.id}"
}

# Create Netlify site
resource "netlify_site" "site" {
  name = local.site_name
}

# Zip the site folder
data "archive_file" "site_zip" {
  type        = "zip"
  source_dir  = "${path.module}/../site"      # adjust path to your website files
  output_path = "${path.module}/../build/site.zip"
}

# Deploy to Netlify
resource "null_resource" "deploy" {
  triggers = {
    zip_sha  = data.archive_file.site_zip.output_sha
    site_id  = netlify_site.site.id
  }

  provisioner "local-exec" {
    command = <<EOT
      set -e
      curl -sSf \
        -H "Authorization: Bearer $NETLIFY_TOKEN" \
        -F "title=Terraform deploy" \
        -F "zip=@${data.archive_file.site_zip.output_path}" \
        https://api.netlify.com/api/v1/sites/${netlify_site.site.id}/builds >/dev/null
      echo "Deploy triggered for site: ${netlify_site.site.name}.netlify.app"
    EOT
    interpreter = ["/bin/sh", "-c"]
  }

  depends_on = [netlify_site.site]
}
