# DNS Basics

DNS (Domain Name System) is like the **phone book of the internet**. It translates human-friendly domain names (like `example.com`) into IP addresses that computers use to communicate. Without DNS, you’d have to remember IPs instead of easy names.

---

## Why DNS Matters

- **Easier to remember:** Humans remember names, computers remember numbers (IP addresses).  
- **Traffic routing:** DNS ensures requests reach the correct server.  
- **Scalability:** Supports billions of devices and websites.  
- **Redundancy & reliability:** Multiple servers ensure DNS keeps working even if one fails.

---

## How DNS Works (Step by Step)

1. **You type a domain name in your browser**  
   - Example: `example.com`  
   - Your computer doesn’t know the IP yet, so it asks a DNS resolver.  

2. **DNS Resolver (Recursive Resolver)**  
   - Usually provided by your ISP or network.  
   - Checks its **cache** first. If the IP is known, it returns it immediately.  
   - If not cached, it asks other servers.

3. **Root DNS Servers**  
   - The resolver asks a **root server**.  
   - Root servers don’t know the exact IP but know **where to find the TLD server** (like `.com`, `.net`).  

4. **TLD (Top-Level Domain) Servers**  
   - Handle domain extensions (`.com`, `.org`).  
   - Point the resolver to the **authoritative name server** for the domain.

5. **Authoritative Name Servers**  
   - These servers **actually know the IP address** of the domain.  
   - Resolver retrieves the IP and passes it back to your computer.  

6. **Your Computer Connects**  
   - Now your computer knows the IP and connects directly to the website’s server.

---

## How DNS Operates

- Operates in a **hierarchical and distributed manner**.  
- Uses **caching** at multiple levels (your computer, ISP, and recursive resolvers) to make lookups faster.  
- Updates are propagated via **zone files** on authoritative name servers.  
- Operates over **UDP (usually port 53)** for fast queries, and TCP when responses are large or zone transfers occur.  
- Resolves domains globally by cooperating across multiple servers.

---

## Name Servers

- **Authoritative Name Server:** Holds the official records for a domain (A, CNAME, MX, etc.).  
- **Recursive Resolver:** Queries other DNS servers on behalf of your computer.  
- **Root Servers:** Top-level servers pointing to TLD servers.  
- **TLD Servers:** Servers for top-level domains that point to authoritative servers.

---

## DNS Records

- **A Record:** Maps domain to IPv4 address.  
- **AAAA Record:** Maps domain to IPv6 address.  
- **CNAME Record:** Alias pointing to another domain.  
- **MX Record:** Defines email servers.  
- **NS Record:** Name server responsible for the domain.  
- **TXT Record:** Stores text info, often for verification or security (like SPF, DKIM).

---

## CDN (Content Delivery Network) & DNS

- CDNs use DNS to **route users to the nearest server**.  
- Improves speed, reliability, and reduces load on the main server.  
- Example: `example.com` might resolve to **London CDN server** for you in the UK, but **New York CDN server** for someone in the US.

---

## DNS Caching

- **Your computer**, **ISP**, and **browsers** store DNS results temporarily.  
- Cached results have a **Time To Live (TTL)** — after that, they refresh from authoritative servers.  
- Reduces repeated queries and speeds up website access.

---

## Summary

- DNS is the **internet’s phone book**.  
- Resolves human-friendly names to IPs.  
- Uses **name servers** at multiple levels (root, TLD, authoritative).  
- CDNs leverage DNS for faster content delivery.  
- Caching speeds up queries.  
- Operates using UDP/TCP on port 53, hierarchically and globally.  
- DNS records define how traffic is routed to your domain.  

