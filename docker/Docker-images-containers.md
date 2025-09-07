# Docker Images and Containers

## Docker Images
A **Docker image** is a lightweight, standalone, and immutable file that contains everything needed to run an application. Images are essentially **blueprints** for containers.

### What a Docker Image Contains:
- **Application code**  
- **Libraries and dependencies**  
- **Configurations** (environment variables, settings, etc.)  

> 🔹 Docker images are **static files**. They don’t run on their own — instead, they serve as the template for creating containers.

---

## Docker Containers
A **Docker container** is the **running instance** of a Docker image. When an image is launched, it becomes a container that executes the application in an isolated environment.

### Key Takeaways with Docker Containers:
- Launching a Docker image creates a **running container**.  
- Containers are **isolated by design** (own file system, network, and resources).  
- Containers are managed by the **Docker Engine** and interact with the host operating system.  
- Multiple containers can run from the same image independently.  

---

## Quick Analogy
- **Docker Image** → Recipe (instructions for what’s inside and how to run it)  
- **Docker Container** → Actual dish prepared from that recipe (running instance)  

---

## Summary
- **Docker images** provide the packaged code, dependencies, and configurations needed to run an application.  
- **Docker containers** are the live, isolated environments created from images that execute the application.  
- Together, they provide a consistent, portable, and efficient way to build and run software across different systems.  
