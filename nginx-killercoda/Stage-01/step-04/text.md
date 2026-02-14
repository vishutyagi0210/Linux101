## 1. The Concept
Nginx serves files from a **document root** directory (usually `/var/www/html`).
When someone visits your server, Nginx looks for `index.html` in this directory.

## 2. The Task
Test that Nginx is serving the default page.

Run this command:

```bash
curl http://localhost
```

## 3. What just happened?
You made an HTTP request to your local Nginx server. It returned the HTML content of `/var/www/html/index.html`.

**Key Points**:
- `localhost` = your own machine (IP: 127.0.0.1)
- Nginx listens on port 80 by default
- `curl` is a command-line HTTP client

---
**Mindset**: "The document root is where files live."
