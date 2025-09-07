# Networking Basics: MAC Addresses, Ports, and Protocols

This note covers some core networking stuff: MAC addresses, ports, protocols, TCP and UDP.

---

## MAC Address

MAC address (Media Access Control) is a unique ID for your device on a network. It matters because it helps devices recognize each other and send data properly.

**Why MAC addresses are important:**
- Data identification:Networks use MAC addresses to know which device is which.
- Data delivery: Makes sure data goes to the right device, not everywhere.
- Tracking and monitoring: Helps with network diagnosis, secure login, and even tracking devices.
- Access control: Organizations can use MAC addresses to allow or block devices.

**Key point:** MAC addresses work at the **Link Layer** (Layer 2) to identify devices on the same network.

---

## Ports and Protocols

- **Ports:** Endpoints where communication happens on a device. Example: web servers listen on port 80.
- **Protocols:** Rules for how data is sent and received between devices.

**Importance:** Ports and protocols make device communication possible.

---

## TCP vs UDP

### TCP (Transmission Control Protocol)
- Works at the **Transport Layer (Layer 4)**.
- **Connection-oriented:** Sets up a connection before sending data.
- **Reliable:** Makes sure data gets to the right place and in order.
- Uses a **three-way handshake** to connect:
  1. SYN
  2. SYN-ACK
  3. ACK
- Slower than UDP but reliable. Used for things like web browsing, emails, file transfers.

### UDP (User Datagram Protocol)
- Also at **Transport Layer (Layer 4)**.
- **Connectionless:** Sends data without setting up a connection.
- No guarantee of delivery or order.
- Much faster than TCP because it doesn’t check or resend packets.
- Used for streaming, gaming, or live broadcasts where speed matters more than perfection.

---

## How They Work

**TCP Example:**  
- Your computer sends a file → TCP sets up connection → breaks file into packets → ensures all packets arrive → reassembles file.

**UDP Example:**  
- Streaming video → packets sent continuously → some may get lost → video still plays with minimal delay.
