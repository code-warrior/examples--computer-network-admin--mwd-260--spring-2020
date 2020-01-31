# Terminal Commands

## Find Which Shell You’re Using

```bash
echo $SHELL
```

---

## Set a Password on the Root Account

```bash
sudo passwd root
```

---

## Unlock the Root Account

```bash
sudo passwd -u root
```

---

## List All Users
```bash
compgen -u
```

---

## List Files and Folders
```bash
ls
```

List all files and folders, including those starting with a dot (`.`)
```bash
ls -la
```

or

```bash
ls -a
```

---

## Change Directory
```bash
cd <DIRECTORY>
```

For example, go to the desktop from home (`~`):
```bash
cd Desktop
```

Simply typing `cd` with no target folder takes you home (`~`):
```bash
cd
```

---

## Get File Type
```bash
file <FILE>
```

This command is useful when working with a file that lacks an extension

---

## Open Connected External Devices
```bash
nautilus /media/<USER>/<TYPE_TAB_KEY>
```

---

## Show History of Commands Typed Into CLI
```bash
history
```

You can clear the history with the `-c` flag:
```bash
history -c
```

---

## Clear the Screen
```bash
clear
```

or use a keyboard shortcut:
```
cntrl + L
```

---

## Read the Manual of a Command
```bash
man <COMMAND>
```

For example, if you want to know more about the `ls` command:
```bash
man ls
```

You can also read more about manuals:
```bash
man man
```

---

## Locate a Command
```bash
which <COMMAND>
```

---

## Create a New Empty File
```bash
touch <FILE>
```

---
