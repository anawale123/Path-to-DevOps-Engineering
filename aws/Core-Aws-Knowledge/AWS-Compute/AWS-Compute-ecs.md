# Amazon EC2 (Elastic Compute Cloud)

EC2 stands for **Elastic Compute Cloud** and is part of the **Infrastructure as a Service (IaaS)** offerings from AWS. With EC2, you are essentially renting virtual machines or services from AWS to run your applications in the cloud.

EC2 is one of the most popular AWS services because of its flexibility and scalability. It provides resizable compute capacity, allowing you to quickly scale capacity up or down depending on demand.

---

## Why Use EC2?

- **On-Demand Computing**: Launch instances whenever you want, paying only for what you use.
- **Scalability**: Easily scale your applications up or down using Auto Scaling Groups.
- **Flexibility**: Choose from a wide variety of instance types optimized for different use cases.
- **Global Reach**: Deploy instances across multiple AWS Regions and Availability Zones.
- **Integration**: Seamlessly works with other AWS services like S3, RDS, Lambda, and CloudWatch.

---

## Key Capabilities

- 🖥️ **Renting virtual machines (EC2 instances)**
- 💾 **Storing data on virtual drives (Elastic Block Store - EBS)**
- 🔁 **Distributing load across multiple instances (Elastic Load Balancer - ELB)**
- 📈 **Auto-scaling services with Auto Scaling Groups (ASG)**
- 🔒 **Fine-grained access and security controls with IAM and Security Groups**
- 🔧 **Instance customization via User Data scripts and AMIs**

---

## EC2 Sizing & Configuration Options

| Option                  | Description                                                                                     |
|-------------------------|-------------------------------------------------------------------------------------------------|
| **Operating System (OS)**    | Linux, Windows, or macOS — select based on your application compatibility                      |
| **Compute Power (CPU)**       | Number of vCPUs and clock speed — from burstable low-end to powerful multi-core CPUs         |
| **Memory (RAM)**              | Varies widely; choose based on your application’s memory needs                               |
| **Storage**                  | - **EBS:** Persistent, network-attached block storage<br>- **Instance Store:** Ephemeral local storage |
| **Networking**               | Network bandwidth, public/private IPs, and enhanced networking options                       |
| **Security**                 | Security Groups acting as virtual firewalls to control inbound/outbound traffic              |
| **User Data (Bootstrap)**    | Script run during instance launch for automated setup                                        |

---

## EC2 User Data & Bootstrapping

### What is User Data?

**User Data** allows you to provide a script or cloud-init directives when launching an instance. This script runs **once during the first boot** and can automate instance setup tasks such as:

- Installing and configuring software packages
- Applying system updates
- Setting environment variables and configuration files
- Starting services or daemons
- Fetching application code from repositories

### Benefits of Using User Data

- Fully automated instance setup — no manual SSH login required after launch
- Consistent and repeatable environment provisioning
- Faster instance bootstrapping and deployment in scale-out scenarios

### Example User Data Script for Apache HTTP Server

```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "Deployed via bootstrap" > /var/www/html/index.html
