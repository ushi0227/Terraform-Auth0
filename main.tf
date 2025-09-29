terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = ">= 1.4.0"
    }
  }
}

provider "auth0" {
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

resource "auth0_connection" "my_enterprise_connection" {
  name         = "my-enterprise-connection"
  display_name = "My Enterprise Connection"
  strategy     = "okta"
  enabled_clients = ["Os87k7HvWmwR56pvIax5RgNmGiw14G5s"]

  options {
    client_id              = "1234567"
    client_secret          = "1234567"
    scopes                 = ["openid", "profile", "email"]
    issuer                 = "https://example.okta.com"
    jwks_uri               = "https://example.okta.com/oauth2/v1/keys"
    token_endpoint         = "https://example.okta.com/oauth2/v1/token"
    authorization_endpoint = "https://example.okta.com/oauth2/v1/authorize"
  }
}
