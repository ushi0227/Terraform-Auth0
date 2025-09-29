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
  client_id     = "0wzuSgtgrxsENqN1hBHAaNaCl3kGg6gM"
  client_secret = "ws2TiY5u-RezROJSqoeQTMqtze9FDzIUng_5INd81jKqq0ByTM0B6yRzjSoCUxsE"
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
