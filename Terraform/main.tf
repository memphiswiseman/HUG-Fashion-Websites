resource "random_pet" "site_suffix" {
  length = 2
}

resource "netlify_site" "site" {
  name = "${var.base_name}-${random_pet.site_suffix.id}"
}

resource "netlify_deploy" "deploy" {
  site_id = netlify_site.site.id
  dir     = "../frontend"   # 🔹 adjust to your site folder
}

output "site_name" {
  value = netlify_site.site.name
}
