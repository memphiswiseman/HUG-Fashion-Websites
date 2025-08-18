provider "netlify" {
  token = var.netlify_token   # 🔹 comes from GitHub secret -> TF_VAR_netlify_token
}
