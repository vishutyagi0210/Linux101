## Lab 3: Proxy Headers

Add these headers to preserve client information:
```nginx
location /api/ {
    proxy_pass http://127.0.0.1:8080/;
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;
}
```

---

## Lab 4: Upstream Blocks

Define backends in an upstream block:
```nginx
upstream backend_servers {
    server 127.0.0.1:8080;
}

server {
    location /api/ {
        proxy_pass http://backend_servers/;
    }
}
```

---

## Lab 5: Health Checks

Nginx automatically marks failed backends as down.
Test by stopping the backend:
```bash
pkill -f backend.py
curl http://localhost/api/  # Should get 502 Bad Gateway
```

---

## Lab 6: Proxy Timeouts

Configure timeouts for slow backends:
```nginx
location /api/ {
    proxy_pass http://127.0.0.1:8080/;
    proxy_connect_timeout 5s;
    proxy_read_timeout 10s;
    proxy_send_timeout 10s;
}
```
