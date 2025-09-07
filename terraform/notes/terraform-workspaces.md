# Terraform Workspaces

## What are Workspaces?

Terraform Workspaces allow you to manage multiple instances of the same infrastructure within a single Terraform configuration.  
Each workspace maintains its own state file, making it easy to manage different environments such as:

- `dev`
- `staging`
- `prod`

---

## Why Use Workspaces?

- Keep environments isolated while reusing the same Terraform code.
- Avoid duplicate configuration files for each environment.
- Easily switch between environments.

---

## Example

### Create and Switch Workspaces

```bash
# List existing workspaces
terraform workspace list

# Create a new workspace
terraform workspace new dev

# Switch to an existing workspace
terraform workspace select staging
Using Workspace Name in Configuration
You can use the workspace name to customize resources:

hcl
Copy code
resource "aws_s3_bucket" "example" {
  bucket = "my-app-${terraform.workspace}"
  acl    = "private"
}
In dev workspace, the bucket will be my-app-dev.

In prod workspace, the bucket will be my-app-prod.

When to Use Workspaces
Managing multiple environments with the same codebase.

Testing changes in isolated environments before production.

Maintaining separate state files automatically.

