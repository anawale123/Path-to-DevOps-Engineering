# Docker Compose   

Docker Compose is a tool used to **define and manage multi-container Docker applications**. Instead of running multiple `docker run` commands manually, you define your app’s **services, networks, and volumes** in a `docker-compose.yml` file. This file acts like a **blueprint**, specifying:  

- Which **images** to use  
- Which **ports** to expose  
- **Environment variables**  
- How **services interact** with each other  

With a single command `docker-compose up`, Docker Compose brings everything up and automatically creates a **private network**, so all containers can communicate easily.  

---

## Benefits of Docker Compose  

- **Easier development and testing**  
  - Spin up the exact environment with all necessary services.  
  - Developers focus more on **code** instead of writing infrastructure commands.  

- **Ensures consistency**  
  - Defines the environment in the YAML file.  
  - Reduces bugs and errors by ensuring **the same setup every time**.  

- **Enhances teamwork**  
  - Makes it simple for teams to work together.  
  - Teams can **pull the repository and automatically get the environment** needed to run the application.  
  - Infrastructure can be **version-controlled alongside application code**.  

---

## Docker Compose File Explained  

```yaml
version: '3.8'  # Base version for Docker Compose, supports Python app

services:  # Defines a group of containers or individual containers

  web:  # Service name
    build: .  # Build from the current directory
    ports:  # Map ports from host to container
      - "5000:5000"
    depends_on:  # Ensures db starts first
      - db

  db:  # Database service
    image: mysql:5.7  # Use MySQL image version 5.7
    environment:  # Environment variables
      MYSQL_ROOT_PASSWORD: my-secret-pw
