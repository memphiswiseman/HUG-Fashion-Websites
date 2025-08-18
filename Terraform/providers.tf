provider "netlify" {}

provider "random" {}

terraform { 
  cloud { 
    
    organization = "hug-fashion-web" 

    workspaces { 
      name = "hug-fashion-websites" 
    } 
  } 
}