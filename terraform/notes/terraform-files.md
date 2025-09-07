# Terraform Files & State

Terraform lets you define and manage infrastructure as code. Two core concepts are **Terraform configuration files** and the **state file**, which work together to keep your infrastructure consistent and predictable.

---

## Terraform Files

- Terraform configuration files (`.tf`) describe your **desired state** — meaning what infrastructure you want, including resources, properties, and how they should be set up.  
- Example resources you might define: servers, databases, networks, storage buckets, etc.  
- These files are **declarative**, telling Terraform *what* you want, not *how* to create it.

---

## Terraform State File

The **state file** (`terraform.tfstate`) is a record of the **infrastructure that has already been built**. It keeps track of resource information and ensures **idempotency**, which means:

- When you run Terraform multiple times with the same configuration:  
  - It **only applies new changes or additions**.  
  - It does **not alter or duplicate existing resources unnecessarily**.  

Terraform uses the state file to track what’s deployed and ensures **consistent, predictable results** every time you apply your configuration.

---

## Desired State vs Current State

- **Desired State:** What you specify in your `.tf` files — the infrastructure you want.  
- **Current State:** What Terraform already knows exists, recorded in the state file.

When you run `terraform apply`, Terraform:

1. Reads the **current state** from the state file.  
2. Reads the **desired state** from your configuration files.  
3. Compares the two to find differences.  
4. Creates or updates resources as needed and updates the **state file** to reflect the actual deployed resources.

Terraform **does not add your configuration directly to the state file**. It uses the config to create or update resources and then updates the state file to reflect what was actually deployed or changed.

---

Terraform files and the state file together ensure your infrastructure is **declarative, predictable, and safe to manage repeatedly**.
