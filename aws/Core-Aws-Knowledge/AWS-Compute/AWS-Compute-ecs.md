# Amazon EC2 (Elastic Compute Cloud)

Amazon EC2 is part of the **Infrastructure as a Service (IaaS)** offerings from AWS. It allows you to **rent virtual machines (instances)** and provides **resizable compute capacity** in the cloud.

---

## Key Capabilities

- 🖥️ **Renting virtual machines (EC2)**
- 💾 **Storing data on virtual drives (EBS)**
- 🔁 **Distributing load across machines (ELB)**
- 📈 **Auto-scaling services using Auto Scaling Groups (ASG)**

---

## ⚙️ EC2 Sizing & Configuration Options

| Option                  | Description                                                                 |
|-------------------------|-----------------------------------------------------------------------------|
| **Operating System**     | Linux, Windows, macOS                                                       |
| **Compute Power (CPU)**  | Choose number of cores and speed                                            |
| **Memory (RAM)**         | Based on application workload                                               |
| **Storage**              | - Network-attached (EBS, EFS)<br>- Instance store (ephemeral)               |
| **Networking**           | Network card type, speed, public IP configuration                           |
| **Security**             | Security Groups (act like a firewall)                                       |
| **Bootstrap**            | EC2 **User Data** to auto-run scripts during first boot                     |

---

## 🛠️ EC2 User Data & Bootstrapping

**User Data** is a startup script (Bash for Linux, PowerShell for Windows) that runs **once on first boot**.

### ✅ Use Cases:
- 📦 Install software (NGINX, MySQL, Node.js)
- 🔄 Update packages
- ⚙️ Configure application files or environments
- 🔧 Start services
- ⬇️ Pull source code from GitHub or S3

---

### Example: Apache Web Server Setup

```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "Deployed via bootstrap" > /var/www/html/index.html
