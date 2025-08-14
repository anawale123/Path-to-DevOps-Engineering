# High Availability Web Infrastructure with SSL Encryption & Reverse Proxy Load Balancing

## Overview
This project showcases a secure, fault-tolerant web infrastructure deployed on AWS. It includes SSL encryption, a reverse proxy load balancer, isolated backend servers, and a status page for real-time backend health checks.



## Architecture
- **Public Subnets:** Reverse Proxy, Status Page
- **Private Subnets:** Backend Server 1, Backend Server 2
- **Networking:** VPC, Route Tables, Internet Gateway
- **Security:** Security Groups, Principle of Least Privilege

## Services Used
- AWS EC2
- AWS VPC
- AWS Route Tables
- AWS Internet Gateway
- Cloudflare DNS
- NGINX
- Let’s Encrypt SSL
- Bash Scripting

## Features
- Reverse proxy with load balancing (NGINX)
- SSL/TLS encryption with Let’s Encrypt
- Backend isolation in private subnets
- Automated health checks for backend availability

## Outcome
This project improved my AWS cloud architecture skills and gave me confidence navigating AWS services, deploying infrastructure, and implementing secure networking practices.

