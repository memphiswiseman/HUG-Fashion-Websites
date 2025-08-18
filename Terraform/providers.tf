provider "netlify" {}

provider "random" {}

terraform { 
  cloud { 
    
    organization = "hug-fashion-web"  # organization

    workspaces { 
      name = "hug-fashion-websites" 
    } 
  } 
}