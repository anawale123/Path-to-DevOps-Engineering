# OSI Model Basics

The **OSI (Open Systems Interconnection) Model** is a framework that explains how data travels across a network. It divides networking into **7 layers**, each with its own responsibilities.

---

## OSI Layers: Layer 1 → Layer 7

### 1. Physical Layer
- Handles the **physical transmission of raw data** over cables, fiber, or wireless signals.  
- Deals with **bits** (0s and 1s).  

### 2. Data Link Layer
- Handles **node-to-node communication**.  
- Uses **MAC addresses** to identify devices.  
- Ensures data frames are delivered error-free between devices on the same network.  
- Devices: Switches, NICs (Network Interface Cards).  

### 3. Network Layer
- Determines **how data reaches its destination across multiple networks**.  
- Uses **IP addresses** for routing.  
- Responsible for **packet forwarding and routing**.  
- Devices: Routers.  

### 4. Transport Layer
- Ensures **reliable data transfer** between devices.  
- Uses **TCP (reliable, ordered)** or **UDP (faster, connectionless)**.  
- Handles **error checking, flow control, segmentation**.  

### 5. Session Layer
- Manages **sessions/connections** between applications.  
- Handles **establishing, maintaining, and terminating sessions**.  

### 6. Presentation Layer
- Translates data into a format the **application layer can understand**.  
- Handles **encryption, compression, and data formatting**.  

### 7. Application Layer
- Closest to the user.  
- Provides **network services to applications**.  
- Examples: HTTP (web browsing), FTP (file transfer), SMTP (email), DNS.  

---

## OSI Layers: Layer 7 → Layer 1 (Reverse)

1. **Application Layer:** User interacts with applications; sends a request.  
2. **Presentation Layer:** Data is formatted, compressed, or encrypted.  
3. **Session Layer:** Manages the session between sender and receiver.  
4. **Transport Layer:** Segments data, ensures reliable delivery with TCP/UDP.  
5. **Network Layer:** Determines the best route using IP addresses.  
6. **Data Link Layer:** Frames data, adds MAC addresses, error checking.  
7. **Physical Layer:** Sends raw bits over the network (cables, wireless, fiber).  

---

##  how osi model operares

-  **Layer 1 → 7**: `Physical, Data Link, Network, Transport, Session, Presentation, Application`  
-  **Layer 7 → 1**: `Application, Presentation, Session, Transport, Network, Data Link, Physical`  
- Think **Physical = bits on wire**, **Data Link = frames**, **Network = packets**, **Transport = segments**, **Application = user requests`.  

