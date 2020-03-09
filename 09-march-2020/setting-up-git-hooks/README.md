# Setting Up Git Hooks

## (1) Enable Git Templates
This tells Git to copy everything in `~/.git-templates` to your per-project `.git/hooks` directory when you run `git init`.

```bash
git config --global init.templatedir '~/.git-templates'
```

**Note**: You can name your template directory (`.git-templates`) anything you want.

---

## (2) Create a Directory to Hold Your Global Hooks
```bash
mkdir -p ~/$(git config --global init.templatedir | cut -b 3-16)/hooks
```

---

## (3) Make All Your Hooks Executable
```bash
chmod a+x ~/.git-templates/hooks/*
```

---

## (4) Add Your Hooks
Write your hooks to the `~/.git-templates/hooks` directory.

---

### (5) Re-initialize Git in Each of Your Existing Repos
```bash
git init
```

---

**Note**: You may want to place `.git-templates` folder under Git control.
