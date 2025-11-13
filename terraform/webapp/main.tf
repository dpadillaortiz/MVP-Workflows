terraform {
  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = "~> 1.0"
    }
  }
}

provider "auth0" {
  domain        = var.auth0_domain
  client_id     = var.auth0_client_id
  client_secret = var.auth0_client_secret
}

resource "auth0_client" "grafana" {
  name         = "Grafana Testing"
  description  = "OIDC-enabled Grafana app"
  app_type     = "regular_web"

  callbacks                  = ["http://localhost:3000/login/generic_oauth"] # You can customize these later
  allowed_logout_urls        = ["http://localhost:3000/logout"]
  oidc_conformant            = true
  grant_types                = ["authorization_code"]

}
