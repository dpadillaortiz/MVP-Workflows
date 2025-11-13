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
  name                                = "Application - Acceptance Test"
  description                         = "Test Applications Long Description"
  app_type                            = "non_interactive" #creates an M2M (“non-interactive”) app in Auth0.
}