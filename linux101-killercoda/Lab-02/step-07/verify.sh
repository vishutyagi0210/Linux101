
### `step-07/verify.sh`
```bash
#!/bin/bash
history -a
sleep 0.5
grep -q "ls /home" /root/.bash_history && exit 0 || exit 1
