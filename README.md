# MVP-Workflows
🗂️ Project Structure
```
auth0-ci-automation/
├── .github/
│   └── workflows/
│       ├── terraform-tenant.yml         # Terraform: Tenant setup & MFA
│       ├── terraform-webapp.yml         # Terraform: Grafana OIDC app
│       └── register-user.yml            # Run shell or Go script to create users
│
├── terraform/
│   ├── tenant/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── webapp/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── terraform.tfvars.example         # Show how to define variables
│
├── scripts/
│   ├── register-user.sh                 # Option A: Shell script to create user
│   └── register_user.go                 # Option B: Go version of the same task
│
├── .env.example                         # Optional: For local dev (never commit real secrets)
├── .gitignore                           # Includes .env, .terraform, etc.
├── README.md                            # Setup, config, and run instructions
└── LICENSE                              # (Optional) Add a license
```

🔍 What's Where
.github/workflows/

YAML definitions of your GitHub Actions CI workflows.

Each file corresponds to a major task (Terraform tenant, app, user registration).

terraform/

Break Terraform configs into modules for each concern.

Keep things modular: tenant setup ≠ app registration ≠ user management.

scripts/

Your custom script (shell or Go) that uses Auth0 Management API.

One file for each language variant, but choose just one for the final project.

.env.example

Example of environment variables used locally (e.g., AUTH0_DOMAIN, CLIENT_ID).

GitHub Actions will store these as secrets — never commit real .env.