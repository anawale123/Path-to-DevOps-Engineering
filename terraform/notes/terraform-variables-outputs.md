# Terraform Variables & Outputs

Terraform **variables** and **outputs** are essential for making your infrastructure code **flexible, reusable, and maintainable**.

---

## Input Variables

Input variables allow you to **pass dynamic values** into your Terraform configurations instead of hardcoding values. This makes your infrastructure easy to customize for different environments (like dev, staging, prod).

### Example: Defining Input Variables

```hcl
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}
Using Input Variables in Resources
hcl
Copy code
resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
}

resource "aws_instance" "web" {
  ami           = "ami-0abcd1234efgh5678"
  instance_type = var.instance_type
}
Key Points:

variable "name" – declares a variable

var.variable_name – references it inside resources

Values can be overridden with:

.tfvars files

Environment variables

CLI arguments (-var "name=value")

Output Variables
Output variables allow you to extract and display important values from your Terraform state after resources are created.

Example: Defining Outputs
hcl
Copy code
output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "web_instance_ip" {
  description = "Public IP of the web instance"
  value       = aws_instance.web.public_ip
}
Key Points:

output "name" – defines an output variable

Use terraform output to view values:

bash
Copy code
terraform output
terraform output vpc_id
Outputs are useful for:

Sharing resource IDs between modules

Passing values to scripts or other tools

Quickly referencing deployed infrastructure

Benefits of Using Variables & Outputs
Avoid hardcoding values in your configuration.

Easily customize infrastructure for different environments.

Reuse modules and resources with dynamic inputs.

Quickly access and share important resource information.