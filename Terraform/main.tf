resource "random_pet" "suffix" {
  length = 2
}

locals {
  site_name = "${local.base_name}-${random_pet.suffix.id}"
}

resource "netlify_site" "site" {
  name = local.site_name
}

data "archive_file" "site_zip" {
  type        = "zip"
  source_dir  = "${path.module}/../site"
  output_path = "${path.module}/../build/site.zip"
}

resource "null_resource" "deploy" {
  triggers = {
    zip_sha  = data.archive_file.site_zip.output_sha
    site_id  = netlify_site.site.id
  }

  provisioner "local-exec" {
    command = <<EOT
      set -e
      if [ -z "$NETLIFY_TOKEN" ]; then
        echo "NETLIFY_TOKEN is not set" >&2
        exit 1
      fi
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