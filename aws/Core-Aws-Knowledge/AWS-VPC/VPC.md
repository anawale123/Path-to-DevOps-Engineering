# AWS VPC (Virtual Private Cloud)

**aws vpc (virtual private cloud)** is a network setup for your cloud architecture that includes all the essential networking components to build and manage your infrastructure. it lets you define rules and control how resources communicate securely within your cloud and with the internet.

## Core VPC Components

- **Subnets (public & private):**  
  divisions of your vpc’s ip range to organize resources. public subnets have internet access, private subnets don’t.

- **Route Tables:**  
  control traffic routing for each subnet. route tables decide if a subnet is public (with a route to an internet gateway) or private (no direct internet route).

- **Elastic IPs (EIPs):**  
  static public ip addresses you attach to resources like nat gateways or ec2 instances for consistent internet access.

- **Security Groups (SGs):**  
  stateful firewalls controlling inbound and outbound traffic at the instance level.

- **Network Access Control Lists (NACLs):**  
  stateless firewalls controlling traffic at the subnet level for an extra layer of security.

- **Gateways:**  
  connect your vpc to outside networks:  
  - **Internet Gateway (IGW):** allows public subnets to access the internet.  
  - **NAT Gateway/Instance:** lets private subnets initiate outbound internet traffic safely without exposing them to inbound traffic.  
  - **Virtual Private Gateway (VGW):** connects your vpc to on-premises networks through vpn.  
  - **Transit Gateway:** connects multiple vpcs and on-premises networks at scale.

## Additional Components

- **VPC Peering:**  
  links two vpcs so they can communicate privately without using the internet.

- **VPC Endpoints:**  
  private connections to aws services inside the aws network, no internet needed.

- **AWS PrivateLink:**  
  private service-to-service connections within aws.

- **Flow Logs:**  
  capture network traffic info for monitoring and troubleshooting.

- **DHCP Options Sets:**  
  configure network settings like dns servers and domain names for your instances.

- **Elastic Network Interfaces (ENIs):**  
  virtual network cards you attach to instances for flexible networking.

- **Customer Gateway:**  
  your on-premises device that connects to aws via vpn.

---

configuring these core and additional components properly lets you build a secure, organized, and scalable network for your aws cloud environment.
