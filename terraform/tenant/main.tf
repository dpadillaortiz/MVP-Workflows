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

resource "auth0_guardian" "my_tf_guardian" {
  policy        = "all-applications"
  email         = true
  otp           = true
  recovery_code = true
}

resource "auth0_tenant" "my_tenant" {
  friendly_name      = "Terraform Managed Tenant"
  support_email      = "support@example.com"
  support_url        = "https://example.com/support"
  session_lifetime   = 700
  
  session_cookie {
    mode = "non-persistent"
  }
  error_page {
    html          = "<html> <h1> This is awesome </h1></html>"
  }
}