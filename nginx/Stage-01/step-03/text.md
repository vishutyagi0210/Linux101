## 1. The Concept
Nginx configuration is organized in **contexts** (blocks):
- `main`: Global settings
- `events`: Connection processing
- `http`: Web server settings
- `server`: Virtual host (website)
- `location`: URL routing

The main config file is `/etc/nginx/nginx.conf`.

## 2. The Task
View the main configuration file.

Run this command:

```bash
cat /etc/nginx/nginx.conf
```

## 3. What just happened?
You saw the structure:
```
main context
├── events { }
└── http {
    └── server {
        └── location { }
    }
}
```

Each context has specific directives (settings).

---
**Mindset**: "Configuration is hierarchical."
