# Docker Multi-Stage Builds

Docker **multi-stage builds** allow you to use multiple `FROM` statements in a single Dockerfile to create optimized images which emphasizes on less storage used for the docker image.  
This technique is useful for **reducing image size**, separating build dependencies from runtime dependencies, and improving security.

---

## Why Use Multi-Stage Builds?

- **Smaller Images:** Only the final stage is kept, removing unnecessary build tools and dependencies.  
- **Separation of Concerns:** You can separate build-time dependencies (e.g., compilers, package managers) from runtime dependencies.  
- **Improved Security:** Reduces attack surface by excluding build tools from the final image.  

---

## How It Works

A multi-stage build uses **multiple `FROM` statements** in a single Dockerfile. Each stage can have its own base image, and you can selectively copy artifacts from previous stages.

---

## Example: Multi-Stage Build for a Node.js App

```dockerfile
# Stage 1: Build
FROM node:20 AS build

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy application source code
COPY . .

# Build the application
RUN npm run build

# Stage 2: Production
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy only the built app and package files from the build stage
COPY --from=build /app/dist ./dist
COPY --from=build /app/package*.json ./

# Install only production dependencies
RUN npm install --production

# Start the application
CMD ["node", "dist/index.js"]
