# AWS

## Introduction
Covering AWS core reflects my learning journey and understanding of the AWS Architect . Through hands-on practice and real-world examples, I have broken down each concept into digestible parts to gain clarity on the cloud computing principles and how they are applied in AWS.

---

## Domain 1: Design Secure Architectures

### Identity and Access Management (IAM)

- IAM allows the creation of users, groups, roles, and policies.
- Policies (written in JSON) define permissions.
- Roles provide **temporary access** and are preferred over direct permissions.
- Service Control Policies (SCPs) act as guardrails at the AWS Organization level—used only for restrictions, not grants.

### Principle of Least Privilege

- Always grant the minimum permissions necessary.
- Helps reduce the attack surface.

### Encryption and Key Management

- **AWS KMS (Key Management Service)** manages encryption keys used by services like S3, EBS, RDS, and Secrets Manager.
- "Encryption at rest" protects data stored (on disk).
- "Encryption in transit" protects data as it travels between services.

### Network Security

- **Security Groups** (stateful) allow only allow rules.
- **Network ACLs (NACLs)** (stateless) allow both allow/deny rules and apply to subnets.

---

## Domain 2: Design Resilient Architectures

### Multi-tier Architecture

- VPC acts like a virtual data center.
- Web tier (public subnet): Hosts web servers (e.g., EC2 with HTTP/HTTPS).
- App tier (private subnet): Hosts backend and business logic.
- DB tier (private subnet): Hosts databases (e.g., RDS).
- ALB (Application Load Balancer): Routes traffic to healthy instances.

### High Availability

- EC2 Auto Scaling groups (ASGs) launch more instances based on demand.
- Resources span across multiple Availability Zones (AZs).

### Elastic Load Balancer (ELB)

- Distributes incoming traffic to healthy targets (EC2, Lambda, etc).
- Application Load Balancer works at Layer 7 (HTTP/HTTPS).

---

## Domain 3: Design High-Performing Architectures

### EC2 and EBS

- EC2 is a virtual machine (VM) for backend/frontend.
- EBS is virtual hard disk attached to EC2.
- EBS types:
  - gp2/gp3: General Purpose
  - io1/io2: High IOPS (for DBs)
  - st1/sc1: Throughput optimized (for big data)
- Use Elastic Volumes to resize EBS without downtime.

### Caching and Optimization

- Use **Amazon CloudFront** to cache content at edge locations.
- **Elasticache** can reduce DB read load.

---

## Domain 4: Design Cost-Optimized Architectures

### Storage Tiering

- S3 Standard for frequent access, S3 Glacier for archive.
- Lifecycle rules to move data automatically.

### Compute Optimization

- Use Spot Instances for non-critical workloads.
- Rightsizing EC2 with instance families based on need.

---

## Domain 5: Define Operationally Excellent Architectures

### Monitoring and Alerts

- **CloudWatch**: Metrics and alarms for resources.
- **CloudTrail**: Logs all API calls (auditing).

### Automation and Recovery

- Use Auto Scaling, Elastic Load Balancer, and Route 53 health checks.
- Implement Infrastructure as Code (e.g., CloudFormation or Terraform).

---

## Conclusion

By understanding the core components of AWS—compute, storage, networking, and security—I’ve built a mental model of how AWS architectures operate in real-world production environments. From secure access to resilient multi-tier systems, this learning path has prepared me to make design decisions confidently using AWS best practices.

This thesis reflects not only the theoretical concepts but also the real-world mindset needed to approach the AWS Solutions Architect – Associate certification.
