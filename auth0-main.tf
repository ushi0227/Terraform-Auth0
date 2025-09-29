terraform {
  required_providers {
    auth0 = {
      source  = "alexkappa/auth0"
      version = "0.17.1"
    }
  }
}

provider "auth0" {
  domain        = "lac-ushida-cic.cic-demo-platform.auth0app.com"
  client_id     = "ZVxEyVQoUqFjJKrwFGOtJwMF6ozzGdMM"
  client_secret = "o3Y0MwZcdbp6wIoxSLCXBDs4aC-v4EC1TVnUaAGzXAkEzHXiFjlUVOD7yIHuYwb9"
}

resource "auth0_user" "user" {
  connection_name = "Username-Password-Authentication"
  user_id         = "12345"
  username        = "demo_test"
  name            = "Test Demo"
  email           = "test.demo@lac.dev.local"
  email_verified  = true
  password        = "61LACushida"
}