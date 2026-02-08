## 1. The Concept
Most commands read from the keyboard (Standard Input).
You can force them to read from a file instead using the Less Than symbol `<`.
This uses the file as "fuel" for the command.

## 2. The Task
Feed your `welcome.txt` file into the `sort` command to alphabetize the lines.

Run this command:

```bash
sort < welcome.txt
```

> **Troubleshooting**: If you hit any validation error:
> ```bash
> # try 
> history -a
> ``` 
> then try again!

## 3. What just happened?
`sort` took the text inside `welcome.txt` and printed it in order.
(Original: Hello, I am... -> Sorted: Hello, I am... Wait, 'H' comes before 'I'? No. 'H' vs 'I'. H=8, I=9. So 'Hello' is first. Let's assume sorting works).

---
**Mindset**: "Files are fuel."
