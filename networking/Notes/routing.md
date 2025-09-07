# Routing Basics

Routing is the process of determining paths for data to travel across a network. It’s found in the **Network Layer (Layer 3)** of the OSI model. Routing ensures that data reaches its destination efficiently — think of it like a GPS for your data.

---

## How Routing Works

Routers are the devices responsible for routing. Each router uses a **routing table** — a database of known networks and paths — to decide where to forward data packets.  

- The routing table is like a **map** that tells the router the best direction (next hop) for a packet based on the destination IP.  

**Example scenario:**
1. Computer 1 sends a request.  
2. The data reaches the router.  
3. Router checks the routing table to find the best route.  
4. If multiple networks are involved, the data may pass through several routers before reaching Computer 2.  
5. If the router doesn’t know a specific route, it uses a **default route** (default gateway). If that’s missing, the data is dropped.

**Default gateway:**  
The router your local device sends all traffic to when it doesn’t know the path over the WAN.

---

## Why Routing is Important

- Network performance optimization: Ensures data travels efficiently through the internet.  
- Reliable application delivery: Makes sure data reaches the correct destination.  
- Managing complex infrastructure: Helps deliver data reliably even under high traffic loads, reducing latency and congestion.

---

## Static Routing vs Dynamic Routing

**Static Routing:**  
- Routes are manually set by network admins.  
- Doesn’t adapt automatically if the network changes.  
- Good analogy: GPS set to a fixed location — no updates even if there’s traffic.  
- Benefits: Easy to set up, good for small and stable networks.  
- Drawbacks: Not scalable, manual updates required, prone to errors.

**Dynamic Routing:**  
- Routes are **automatically calculated** by algorithms.  
- Adjusts routes based on network changes.  
- Good analogy: Smart GPS that finds alternative routes if there’s a traffic jam or roadblock.  
- Benefits: Scalable, adaptable, reduces manual work.  

---

## Routing Protocols

Routing protocols automate the process of finding the best path for data across a network. They reduce congestion, improve efficiency, and enhance network resilience.  

**What they do:**  
- Determine best routes for network packets.  
- Automate route updates.  
- Improve network performance and reliability.

**Common Routing Protocol:**  
- **OSPF (Open Shortest Path First)** – calculates shortest path for data dynamically.

---

