locals {
  # Lowercase, DNS‑friendly base name (e.g., "hug-ibadan-demo")
  base_name = lower(replace(var.base_name, " ", "-"))
}