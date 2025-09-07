# Amazon EC2

EC2 stands for **Elastic Compute Cloud** and is part of the **Infrastructure as a Service (IaaS)** offering from AWS. With EC2, you’re basically renting virtual machines or services from AWS.

EC2 is one of the most popular offerings on AWS.

It mainly consists of the capability to:

- Rent virtual machines (EC2)
- Store data on virtual drives (EBS)
- Distribute load across machines (ELB)
- Scale the services using an Auto Scaling Group (ASG)

---

## EC2 Sizing & Configuration Options

When launching an EC2 instance, you can configure:

- **Operating System (OS):** Linux, Windows, or macOS
- **Compute Power:** Number of vCPUs
- **Memory (RAM)**
- **Storage:**
  - Network-attached (EBS and EFS)
  - Local (EC2 instance store)
- **Networking:**
  - Network card speed
  - Public IP address
- **Security:**
  - Firewall rules via Security Groups
- **Bootstrap Script:** Set up at first launch using **User Data**

---

## EC2 Instance Types – Overview

Not all EC2 instances are created equal. AWS offers different types optimized for different use cases:

| Family | Purpose                        | Example Type     | Best For                                                 |
|--------|--------------------------------|------------------|----------------------------------------------------------|
| t      | General Purpose (burstable)    | t3.micro         | Low-cost, low-traffic workloads, dev/test                |
| m      | General Purpose (balanced)     | m5.large         | Web servers, app servers, small DBs                      |
| c      | Compute Optimized              | c6g.large        | High-performance computing, batch processing             |
| r      | Memory Optimized               | r5.xlarge        | In-memory DBs (Redis, Memcached), big data apps         |
| x      | Extra Memory Optimized         | x2idn.16xlarge   | SAP HANA, enterprise workloads                           |
| i      | Storage Optimized (fast IOPS)  | i3.large         | NoSQL DBs, data warehousing                              |
| d      | Dense Storage (HDD-focused)    | d2.8xlarge       | Hadoop, distributed file systems                         |
| h      | High Disk Throughput           | h1.4xlarge       | Log processing, big data                                 |
| g      | GPU for Graphics               | g5.xlarge        | Game streaming, 3D rendering                             |
| p      | GPU for Machine Learning       | p4d.24xlarge     | Deep learning training, scientific computing             |
| inf    | Inferencing with ML            | inf1.6xlarge     | ML inference at scale                                    |
| f      | FPGA-accelerated               | f1.2xlarge       | Custom logic and hardware acceleration                   |
| a      | ARM (older - Graviton1)        | a1.medium        | Arm-based low-cost apps                                  |
| g      | ARM (Graviton2/3 - newer)      | g6g.large        | Modern scalable ARM workloads                            |
| z      | High-frequency (GHz)           | z1d.large        | Single-threaded high-performance apps                    |

---

## EC2 Pricing Options

| Option            | Description                                      | Best For                                  |
|-------------------|--------------------------------------------------|-------------------------------------------|
| **On-Demand**     | Pay per use, flexible                           | Dev/test, short-term workloads             |
| **Reserved**      | 1–3 year commitment, significant discount        | Long-running production apps               |
| **Spot Instances**| Up to 90% cheaper, can be interrupted           | Batch jobs, stateless apps                 |
| **Dedicated Hosts** | Physical servers just for you                  | Compliance-heavy or licensing needs        |

---

## Key EC2 Features

### 🔐 Security
- **Security Groups** – Act as a firewall for EC2
- **Key Pairs** – Secure SSH access with `.pem` file
- **IAM Roles** – Grant temporary credentials to EC2
- **Bastion Host** – Jump box to access private instances securely

### 📊 Monitoring & Logging
- **CloudWatch** – Monitor metrics like CPU, memory, and disk
- **CloudTrail** – Audit logs and track user/API activity
- **VPC Flow Logs** – Capture network traffic in/out of EC2

### ⚙️ Load Balancing & Auto Scaling
- **Elastic Load Balancer (ELB)** – Distribute incoming traffic
- **Auto Scaling Groups (ASG)** – Automatically adjust instance count

### 💽 Storage
- **EBS (Elastic Block Store)** – Persistent block storage
- **Instance Store** – Ephemeral, high-speed storage (non-persistent)
- **EBS Snapshots** – Backup EC2 volumes

### 🧠 Placement Groups
Control physical placement of instances:
- **Cluster:** Same rack, low latency
- **Spread:** Across racks, max fault tolerance
- **Partition:** Separate groups for large workloads

---

## 📝 EC2 User Data

**User Data** in EC2 is a script you provide when launching an instance. It runs at the first boot and is mainly used for **bootstrapping** — automating setup and configuration.

### Key Concepts
- Written during launch (Advanced > User Data section)
- Typically a **Bash script** (Linux) or **PowerShell** (Windows)
- Executes only **once** at first boot (by default)
- Runs as **root**, so has full system control
- Useful for automating:
  - Installing software (e.g., NGINX, MySQL, Node.js)
  - Updating packages
  - Starting services
  - Pulling code from Git or S3
  - Configuring environment variables

### Example:

```bash
#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "Deployed via bootstrap" > /var/www/html/index.html
