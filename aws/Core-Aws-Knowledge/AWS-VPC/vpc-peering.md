# AWS VPC Peering

VPC Peering is a way to connect two VPCs so they can communicate privately. It allows resources in one VPC to talk to resources in another VPC as if they were on the same network, without going over the internet.

## How VPC Peering Works

- Connects two VPCs using private IP addresses.
- Works across different AWS accounts and regions.
- Does **not** support transitive peering — meaning if VPC A peers with VPC B, and VPC B peers with VPC C, A cannot talk to C through B.
- Traffic stays within the AWS network for better security and lower latency.

## Use Cases

- Sharing resources like databases or services between teams or projects.
- Secure communication between VPCs without exposing traffic to the internet.
- Connecting different environments like dev and prod securely.