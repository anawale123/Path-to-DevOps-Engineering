# AWS Networking Concepts: Subnets, Route Tables, and Gateways

## Subnets  
Subnets are subdivisions of your VPC’s IP address range assigned to EC2 instances or other AWS services. They are mainly used to divide the network into groups with specific rules. This makes them either:  
- **Public Subnets:** Accessible from the internet, allowing communication with users at the application layer (Layer 7 of the OSI model).  
- **Private Subnets:** Isolated from the internet, where instances communicate internally over a local network (LAN) without direct WAN access.

## Route Tables  
Route tables define the paths network traffic takes to reach its destination. They are essential because, without route tables, communication between subnets would not work. Route tables allow us to:  
- Specify which subnets are public (with routes to an internet gateway).  
- Specify which subnets are private (without direct internet routes).  

In short, route tables control traffic flow inside the VPC and are key to setting up public and private subnets.

## Gateways  
Gateways operate at Layer 3 (Network layer) of the OSI model. They act as exit and entry points for traffic flowing in and out of your network. Essentially, they determine the next hop for traffic before it reaches the transport layer (Layer 4: TCP/UDP). Examples include:  
- **Internet Gateway (IGW):** Routes traffic between your VPC and the internet (WAN).  
- **NAT Gateway:** Allows instances in private subnets (LAN) to initiate outbound internet traffic securely without exposing them to inbound traffic.

---

