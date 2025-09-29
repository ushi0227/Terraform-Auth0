terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = ">= 1.4.0"
    }
  }
}

provider "auth0" {
  version = ">= 0.27.1"
  domain        = "lac-ushida-cic.cic-demo-platform.auth0app.com"
  client_id     = "Os87k7HvWmwR56pvIax5RgNmGiw14G5s"
  client_secret = "2eyOccybh3EXunNZtuip-LcNFDCg-6LYkVFn0QtzUfpeM-JSpoXwQ3J3ix-fLFGP"
}

# resource "auth0_client" "sample" {
#   name                = "ReactSamples"
#   app_type            = "spa"
#   callbacks           = ["http://localhost:3000"]
#   allowed_origins     = ["http://localhost:3000"]
#   allowed_logout_urls = ["http://localhost:3000"]
#   web_origins         = ["http://localhost:3000"]
# }
# 
# resource "auth0_user" "user" {         # ユーザ作成
#   connection_name = "Username-Password-Authentication"
#   user_id         = ""
#   username        = "demo_test"
#   name            = "Test Demo"
#   email           = "test.demo@lac.dev.local"
#   email_verified  = true
#   password        = "61LACushida"
# }

resource "auth0_connection" "Name" {
  name     = "Name"
  strategy = "auth0"
}

resource "auth0_organization" "my_organization" {
  name         = "my-organization"
  display_name = "My Organization"
}
