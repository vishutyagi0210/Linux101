## 1. The Concept
A **reverse proxy** forwards client requests to backend servers.

**Flow**:
```
Client → Nginx (port 80) → Backend App (port 8080) → Response
```

**Use cases**:
- Hide backend servers from internet
- Load balance across multiple backends
- Terminate SSL at proxy level
- Cache responses

## 2. The Task
Understand the concept by viewing the diagram above.

Run this to see a backend server:
```bash
curl http://127.0.0.1:8080
```

## 3. What just happened?
You directly accessed the backend server. In the next lab, you'll configure Nginx to proxy requests to it.

---
**Mindset**: "Nginx is the gateway."
