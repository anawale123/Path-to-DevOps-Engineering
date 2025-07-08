Lesson 6: Basic Networking Commands

ping
Tests network connectivity. Sends packets to a destination and measures response time.
ping [hostname/IP]
Example: ping google.com – checks connection to Google
Ctrl+C to stop the test

ifconfig
Displays the network interface configuration. Shows IP addresses, subnet mask, MAC address, and more.
ifconfig – shows all interfaces and details
Use ifconfig eth0 to view specific interface details (e.g., eth0 for wired connections)

netstat
Displays network connections, routing tables, and interface statistics.
netstat -tuln – shows active listening ports (TCP/UDP)
netstat -r – shows the routing table
netstat -an – shows all active connections and their status

ssh
Securely connects to remote servers. Provides encrypted communication.
ssh username@hostname/IP
Example: ssh user@192.168.1.1 – connects to the server at the specified IP
Use -p to specify a non-default port:
ssh -p 2222 user@hostname

Notes

ping helps verify if a remote server or device is reachable

ifconfig is useful for checking IP addresses and network interfaces

netstat is great for checking open ports and network connections

ssh is a secure way to remotely access a server's command line

Always use exit to end SSH sessions properly

