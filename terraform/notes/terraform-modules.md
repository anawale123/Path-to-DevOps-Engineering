# Terraform Modules

## What is a Module?

A **module** in Terraform is a reusable block of code that groups resources together. Modules help:

- Reuse code
- Organize infrastructure
- Reduce duplication

---

## Example

### Module: `modules/ec2-instance/`

**main.tf**
```hcl
resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = { Name = var.name }
}
variables.tf

hcl
Copy code
variable "ami" {}
variable "instance_type" {}
variable "name" {}
outputs.tf

hcl
Copy code
output "instance_id" { value = aws_instance.example.id }
output "public_ip"   { value = aws_instance.example.public_ip }
Root Module
main.tf

hcl
Copy code
provider "aws" { region = "us-east-1" }

module "web_server" {
  source        = "./modules/ec2-instance"
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  name          = "web-server"
}

output "web_instance_ip" { value = module.web_server.public_ip }