## 🚨 REAL-WORLD SCENARIO: Traffic Spike Investigation

### The Situation
**Date**: 30/Dec/2025  
**Time**: 10:15 AM  
**Alert**: Google Analytics shows unusual traffic spike at 10:00 AM  
**Your Role**: Production Engineer investigating the incident

**Context**: You manage an e-commerce website. Normal traffic is ~10 requests/hour. At 10:00 AM, traffic spiked to ~1200 requests/hour. Marketing didn't run any campaigns. Is this legitimate growth or an attack?

---

## Investigation Workflow

### Step 1: Confirm Traffic Actually Reached the Server

Google Analytics is client-side JavaScript. We need server-side proof.

```bash
wc -l /var/log/nginx/access.log
```

**Expected**: ~35 lines (9 normal + ~25 spike + 3 post-spike)

**Analysis**: Yes, traffic hit the server. This isn't a GA glitch.

---

### Step 2: Identify the Actual Spike Date/Time

Never assume. Extract dates from logs to find the exact window.

```bash
awk '{print $4}' /var/log/nginx/access.log | cut -d: -f1-2 | sort | uniq -c
```

**Output**:
```
      9 [30/Dec/2025:09
     23 [30/Dec/2025:10
      3 [30/Dec/2025:10
```

**Analysis**: Spike occurred at `30/Dec/2025:10` (10:00 AM hour).

---

### Step 3: Extract Only the Spike Data

Isolate the incident window to avoid noise.

```bash
awk '$4 ~ /\[30\/Dec\/2025:10:00/' /var/log/nginx/access.log > /tmp/spike.log
wc -l /tmp/spike.log
```

**Expected**: ~23 lines

**Analysis**: We now have only the spike traffic for focused analysis.

---

### Step 4: Detect Spike Hour (Burst Analysis)

Human traffic is distributed. Bots create sudden bursts.

```bash
awk '{print $4}' /tmp/spike.log | cut -d: -f2 | sort | uniq -c
```

**Output**:
```
     23 10
```

**Analysis**: ALL 23 requests in a single hour = **burst pattern** (not gradual growth).

---

### Step 5: Identify Top Source IPs

Legitimate traffic comes from many IPs. Bots concentrate from few IPs.

```bash
awk '{print $1}' /tmp/spike.log | sort | uniq -c | sort -nr
```

**Output**:
```
     11 185.220.101.42
      5 45.148.10.88
      5 91.203.5.146
      1 192.168.1.45
```

**Analysis**:
- **3 IPs** generated **21 requests** (91% of spike)
- **1 legitimate IP** (192.168.1.45) = only 1 request
- **Verdict**: Few IPs, massive volume = **BOT ATTACK**

---

### Step 6: User-Agent Analysis (Strongest Indicator)

User-Agent reveals WHO is making requests.

```bash
awk -F\" '{print $6}' /tmp/spike.log | sort | uniq -c | sort -nr
```

**Output**:
```
     11 python-requests/2.28.1
      5 curl/7.81.0
      5 -
      1 Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36
```

**Analysis**:
- `python-requests` = Python script (bot)
- `curl` = Command-line tool (automated)
- `-` = Empty User-Agent (scraper hiding identity)
- `Mozilla` = Real browser (only 1 request)

**Verdict**: **91% bot traffic**

---

### Step 7: Requested URLs (Intent Analysis)

What are they requesting?

```bash
awk '{print $7}' /tmp/spike.log | sort | uniq -c | sort -nr
```

**Output**:
```
     22 /
      1 /products
```

**Analysis**:
- Bots hitting homepage repeatedly
- Only 1 legitimate request to `/products`
- **Pattern**: Scraping homepage, not browsing like humans

---

### Step 8: Rate-Based Bot Confirmation

Calculate requests per minute.

```bash
awk '{print $1, substr($4,2,20)}' /tmp/spike.log | sort | uniq -c | sort -nr | head
```

**Output** (sample):
```
      5 185.220.101.42 30/Dec/2025:10:00:0
      3 45.148.10.88 30/Dec/2025:10:00:0
      3 91.203.5.146 30/Dec/2025:10:00:0
```

**Analysis**: Single IPs making **multiple requests per second** = automated.

---

## Final Verdict

### Evidence Summary:
1. ✅ **Burst Pattern**: All traffic in 1-minute window
2. ✅ **IP Concentration**: 3 IPs = 91% of traffic
3. ✅ **Bot User-Agents**: `python-requests`, `curl`, empty
4. ✅ **Repetitive Behavior**: Same URL (`/`) repeatedly
5. ✅ **High Rate**: Multiple requests per second from single IPs

### Conclusion:
**🚨 BOT/SCRAPER ATTACK - NOT LEGITIMATE TRAFFIC**

### Recommended Actions:
1. Block the 3 malicious IPs in firewall
2. Implement rate limiting (max 10 req/min per IP)
3. Add User-Agent filtering (block `python-requests`, `curl`)
4. Monitor for similar patterns

---

## What You Learned

You just performed a **production-grade incident investigation** using:
- `awk` for log parsing
- `grep` for filtering
- `sort | uniq -c` for counting
- Timestamp analysis
- IP concentration detection
- User-Agent fingerprinting
- Rate calculation

**This is exactly how real SREs investigate traffic incidents.**

---
**Mindset**: "Data doesn't lie. Logs reveal the truth."
