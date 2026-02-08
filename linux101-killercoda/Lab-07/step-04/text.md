## 1. The Concept
The **Pipe** `|` is the most powerful tool in Linux.
It takes the output of the Left command and turns it into the input of the Right command.
It connects tools together like Lego bricks.

## 2. The Task
List the `/etc` directory (which is huge), but immediately send that list to `head` to see only the first 5 lines.

Run this command:

```bash
ls /etc | head -n 5
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
`ls` generated a huge list, but `head` cut it off. You created a custom chain of logic.

---
**Mindset**: "I build pipelines."
