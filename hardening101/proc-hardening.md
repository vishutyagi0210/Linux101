# Linux Hardening Nobody Talks About: `/proc` and `hidepid`

This README explains a simple but powerful Linux hardening technique that limits process visibility between users by securing the `/proc` filesystem.

This is **production-safe**, **kernel-supported**, and **still relevant in 2025** for shared Linux systems.

---

## Why This Matters

Most Linux users rely on commands like:

```bash
ps aux
top
htop
```

These tools **do not talk directly to the kernel**.

They read process information from **`/proc`**, a virtual filesystem exposed by the Linux kernel.

By default, this means:

- Any user can see **all running processes**
- Command-line arguments are visible
- Process behavior can be mapped without root access

On shared systems, this is unnecessary exposure.

---

## What Is `/proc`

`/proc` is a virtual filesystem mounted at runtime.

Every running process has a directory:

```text
/proc/<PID>/
```

Example contents:

- `cmdline` – full command and arguments  
- `status` – UID, GID, memory, state  
- `stat` – CPU/runtime statistics  
- `fd/` – open file descriptors  

Tools like `ps` simply read these files and format the output.

---

## Hardening Strategy

Linux allows process visibility to be restricted **at mount time**.

We do this by modifying `/etc/fstab`.

---

## Step 1: Create the `proc` Group

Create a dedicated group for privileged `/proc` access:

```bash
groupadd proc
```

Verify the group exists:

```bash
getent group proc
```

> ℹ️ You do **not** need to copy the numeric GID.  
> Linux resolves the group name automatically at mount time.

---

## Step 2: Edit `/etc/fstab`

Open the file:

```bash
vi /etc/fstab
```

Add or update the `/proc` entry:

```fstab
proc /proc proc defaults,hidepid=2,gid=proc 0 0
```

---

## Step 2: Apply the Change (No Reboot Required)

Remount `/proc`:

```bash
mount -o remount /proc
```

Verify:

```bash
mount | grep /proc
```

You should see `hidepid=2` in the mount options.

---

## Understanding the `/etc/fstab` Entry

```text
proc   /proc   proc   defaults,hidepid=2,gid=proc   0   0
```

### Field Breakdown

| Field | Meaning |
|-----|--------|
| `proc` | Virtual proc filesystem |
| `/proc` | Mount point |
| `proc` | Filesystem type |
| `defaults` | Standard mount options |
| `hidepid=2` | Users see only their own processes |
| `gid=proc` | Proc group bypass |
| `0` | Do not dump |
| `0` | Do not fsck |

---

## Understanding `hidepid` Values

| Value | Behavior |
|-----|--------|
| `0` | Default – all users see all processes |
| `1` | PIDs visible, details hidden |
| `2` | Users see **only their own processes** |

`hidepid=2` is recommended for shared systems.

---

## Why `gid=proc` Exists

Some services require full process visibility:

- Monitoring agents
- Metrics exporters
- Debugging tools

Create a proc group:

```bash
groupadd proc
usermod -aG proc prometheus
```

Members of this group can see all processes **without root access**.

---

## What Changes After Enabling This

Before:

```bash
ps aux
```

- Shows all users’ processes

After:

```bash
ps aux
```

- Shows only processes owned by the current user

This happens because `/proc/<other_PID>` becomes inaccessible.

---

## Is This Used in Industry in 2025?

Yes — with context.

Common use cases:

- Shared Linux servers
- CI/CD runners
- Bastion and jump hosts
- Academic and lab environments

Less relevant when:

- Containers use PID namespaces
- Single-purpose systems run only root workloads

This setting is **not deprecated** and remains kernel-supported.

---

## Potential Impact

Possible breakage:

- Legacy scripts scraping `/proc`
- Monitoring agents running unprivileged

Mitigation:

- Use `gid=proc`
- Test in staging
- Document the change

---

## Key Takeaway

> `ps` does not decide what you can see.  
> `/proc` does.

Hardening `/proc` removes an entire class of low-effort reconnaissance with a single supported configuration change.

---
