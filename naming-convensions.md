### Naming Conventions

**Must Follow These Rules:**

**📁 Directories:** `##-topic-name/`
```
01-introduction/
02-cli-basics/
15-shell-scripting/
```

**📄 Markdown files:** `##-topic-name.md`
```
01-what-is-linux.md
02-basic-commands.md
```

**📜 Scripts:** `action_name.sh`
```
check_disk_space.sh
backup_system.sh
```

**Rules:**
- ✅ Two digits (01-99)
- ✅ Lowercase only
- ✅ Hyphens for folders/md files
- ✅ Underscores for scripts

**Example Structure:**
```
linux101/
├── 01-introduction/
│   ├── 01-what-is-linux.md
│   ├── 02-distributions.md
│   └── scripts/
│       └── install_check.sh
```

**Wrong ❌ → Right ✅**
- `1-intro/` → `01-introduction/`
- `CLI-Basics/` → `02-cli-basics/`
- `WhatIsLinux.md` → `01-what-is-linux.md`
- `check-disk.sh` → `check_disk_space.sh`

### Quality Standards

All contributions must be:
- ✓ **Clean** - Well-organized and properly formatted
- ✓ **Clear** - Easy to understand for learners
- ✓ **Correct** - Technically accurate and tested
- ✓ **Complete** - Includes examples where appropriate

> **Note:** Only high-quality, well-formatted submissions will be merged. Every pull request is carefully reviewed.

---