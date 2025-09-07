# Dockerfile – Notes  

Dockerfile is a series of instructions on how to build a Docker image. Each instruction creates a **layer** in the image, which makes it easier to track changes and optimize builds. It works like a **recipe for containerizing an application**. Docker uses these layers to improve caching and build efficiency.  

Dockerfiles also allow **repeatable builds**, meaning the container can run consistently in any environment.  

---

## Layered Architecture  

A Dockerfile provides a **step-by-step recipe** to create a Docker image. Key instructions include:  

- **FROM**  
  - The first instruction in most Dockerfiles.  
  - Specifies the **base image**, which defines the programming language, runtime, or platform for the application.  

- **RUN**  
  - Executes commands during the build process.  
  - Commonly used to install software, download dependencies, or configure the environment.  

- **COPY**  
  - Copies files from the host machine into the container image.  

- **WORKDIR**  
  - Sets the working directory for subsequent instructions.  
  - Ensures commands run in the correct location inside the container.  

- **CMD**  
  - Defines the default command that runs when the container starts.  
  - Usually used to launch the application or service.  

---

