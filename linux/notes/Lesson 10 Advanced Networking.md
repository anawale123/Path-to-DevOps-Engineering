Lesson 10: Advanced Networking

nmap
Network scanner to discover hosts and services on a network.
nmap [target]
Example: nmap 192.168.1.1 – scans the target IP for open ports and services
Common options:

-sP = Ping scan to find live hosts

-p = Scan specific ports (e.g., nmap -p 22 192.168.1.1)

netcat (nc)
Network tool for reading and writing data across network connections.
Can be used for port scanning, file transfers, and setting up listeners.
Start a simple listener:
nc -l -p 1234 – listens on port 1234 for incoming connections
Connect to a remote host:
nc [hostname] [port]
Example: nc 192.168.1.1 80 – connects to port 80 of the target IP

SSH Tunneling
Secures data between client and server by routing traffic through an encrypted SSH connection.
Create a basic SSH tunnel:
ssh -L [local_port]:[remote_host]:[remote_port] username@hostname
Example:
ssh -L 8080:localhost:80 user@remote_host – forwards local port 8080 to remote port 80 (web server)

Notes

Use nmap for network discovery and vulnerability scanning

netcat is versatile for network troubleshooting and communication

SSH tunneling is a simple, secure way to access remote services without exposing them directly to the internet

