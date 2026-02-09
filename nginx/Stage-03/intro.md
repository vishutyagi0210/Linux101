# Nginx Stage 03 – Reverse Proxy Fundamentals

## Proxying to Backend Applications

Welcome to one of Nginx's most powerful features: **reverse proxying**. This is how modern web architectures work - Nginx sits in front of application servers (Node.js, Python, Java, etc.) and forwards requests to them.

### What is a Reverse Proxy?

A reverse proxy sits between clients and backend servers:
- **Clients** think they're talking to Nginx
- **Nginx** forwards requests to the real application
- **Backend** processes the request and returns a response
- **Nginx** sends the response back to the client

### Why use a reverse proxy?
- **Security**: Hide backend servers from the internet
- **Load Balancing**: Distribute traffic across multiple backends
- **SSL Termination**: Handle HTTPS at the proxy level
- **Caching**: Store responses to reduce backend load

### In this stage, you will:
- Understand reverse proxy concepts
- Proxy requests to a backend application
- Set proper headers (X-Real-IP, X-Forwarded-For)
- Configure upstream server blocks
- Implement basic health checks
- Handle timeout scenarios

👉 **Mindset outcome**: "I can proxy requests to any backend application."
