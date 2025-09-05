## Security Groups vs Network ACLs (NACLs)

**Security Groups**  
Security groups are designed to control traffic **to and from** instances or AWS services by allowing inbound and outbound connections. They are **stateful**, meaning if you allow incoming traffic on a port, the response traffic is automatically allowed back out, without needing an explicit outbound rule.

**Network Access Control Lists (NACLs)**  
NACLs are **stateless** security controls applied at the subnet level. They control inbound and outbound traffic by allowing or denying based on rules. Because they are stateless, both inbound and outbound rules must be explicitly set. NACLs are often used as an extra layer of security to block malicious IP addresses or unwanted traffic from entering public subnets.

**Table **  
| Feature               | Security Groups                         | Network ACLs (NACLs)                     |
|-----------------------|---------------------------------------|-----------------------------------------|
| Level                 | Instance level                        | Subnet level                           |
| Stateful/Stateless    | Stateful                             | Stateless                             |
| Traffic Control       | Controls inbound & outbound traffic  | Controls inbound & outbound traffic   |
| Rules Required        | Only inbound OR outbound rules needed (due to stateful) | Both inbound AND outbound rules required (stateless) |
| Default Behavior      | Deny all inbound, allow all outbound by default | Allows all inbound & outbound by default unless explicitly denied |
| Use Case              | Allow trusted traffic to instances   | Add an extra layer of security, block specific IPs or traffic at subnet level |
| Rule Evaluation       | All rules are evaluated before allowing traffic | Rules evaluated in order, first match decides allow or deny |
| Typical Targets       | EC2 instances, Elastic Network Interfaces (ENIs) | Entire subnet                         |
