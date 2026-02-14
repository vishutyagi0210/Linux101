## 1. The Concept
Nginx is a software package that needs to be installed before use. Once installed, it runs as a **service** (background process) that you can start, stop, and restart.

## 2. The Task
Install Nginx and start the service.

Run these commands:

```bash
sudo apt update
sudo apt install -y nginx
sudo systemctl start nginx
sudo systemctl status nginx
```

## 3. What just happened?
- `apt update`: Refreshed the package list
- `apt install nginx`: Installed Nginx
- `systemctl start nginx`: Started the Nginx service
- `systemctl status nginx`: Verified it's running (you should see "active (running)")

---
**Mindset**: "Services are managed with systemctl."
