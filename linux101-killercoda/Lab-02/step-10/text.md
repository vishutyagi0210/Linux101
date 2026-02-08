# Lab 17: The Launchpad

## 1. The Concept
To start up (boot), Linux needs some very specific files—like the **Kernel** itself.
These critical files live in `/boot`. If you delete things here, the system won't start.

## 2. The Task
Look, but don't touch.

Run this command:

```bash
ls /boot
```

> **Troubleshooting**: If you hit any validation error even though you wrote the correct command:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
You saw files like `vmlinuz` (the kernel) and `grub` (the bootloader configuration).

---
**Mindset**: "I respect the boot process."