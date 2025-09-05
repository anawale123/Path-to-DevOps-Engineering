## VPC Endpoints

VPC Endpoints let your VPC connect privately to supported AWS services without using the internet. This keeps traffic secure and reduces exposure to public networks.

There are two main types:

- **Gateway Endpoints:** Used for services like S3 and DynamoDB. You add them as targets in your route tables so traffic to these services stays inside the AWS network.
- **Interface Endpoints:** Elastic network interfaces with private IPs. They connect your VPC to many other AWS services privately.

Using VPC Endpoints improves security and performance by keeping traffic within the AWS network, avoiding internet exposure.
