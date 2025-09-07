# Terraform Provisioners

## What are Provisioners?

Provisioners in Terraform allow you to **run scripts or commands on resources after they are created**. They are typically used for:

- Bootstrapping instances (installing software, copying files).
- Performing configuration tasks that Terraform alone cannot do.
- Running custom commands locally or remotely.

**Important:** Provisioners are considered a **last resort**. Use them only if you cannot achieve the same result with Terraform resources or modules.

---

## Types of Provisioners

1. **`local-exec`** – Runs a command on your local machine.  
2. **`remote-exec`** – Runs a command on the remote resource (e.g., EC2 instance via SSH).

---

## Example

### Using `remote-exec` to run a command on an EC2 instance

```hcl
resource "aws_instance" "web" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx"
    ]

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/id_rsa")
      host        = self.public_ip
    }
  }
}
Using local-exec to run a local command
hcl
Copy code
resource "null_resource" "example" {
  provisioner "local-exec" {
    command = "echo Hello Terraform > hello.txt"
  }
}
When to Use Provisioners
When you need initial configuration on a resource that Terraform cannot do natively.

Bootstrapping software or scripts on newly created instances.

One-time tasks that depend on resource creation.

Tip: Prefer using Terraform resources, modules, or cloud-init/user data over provisioners whenever possible.