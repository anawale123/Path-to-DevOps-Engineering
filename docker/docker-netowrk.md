# Docker Network – Notes  

Docker networking allows containers to **talk to each other**, with microservices, and with external systems like databases or APIs. It’s essential for **distributed applications**. Docker networking mainly focuses on **connectivity, routing, and isolation**.  

---

## Basic Concepts  

- **Bridge network**  
  - Default network type in Docker.  
  - Containers on the same host can communicate using **internal IPs or container names**.  
  - Good for **isolated communication** between microservices.  

- **Host network**  
  - Containers share the **host machine’s network stack**.  
  - Enables direct communication between the container and the host.  
  - Useful when the application needs **full access to host networking**.  

- **None network**  
  - Stops **all networking** for the container.  
  - Useful for **testing or isolating containers** completely.  

---

## Key Takeaways  

- **Bridge network** → communication **only between containers** on the same host using internal IPs.  
- **Host network** → communication between **host and containers**, sharing the same network stack.  
- Docker containers discover each other via **DNS or IP**.  
- Networking ensures containers can:  
  - **Communicate securely**  
  - **Stay isolated if needed**  
  - **Reach external resources** like databases, APIs, etc.  

This is especially important for applications following a **microservice architecture**.  
