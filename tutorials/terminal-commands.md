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

You can also read more about the manual command itself:
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

## Alias
Show commands that have been aliased in your environment.

```bash
alias
```

---

## More
View the contents of a file, and, if the file's contents are longer than the Terminal's screen, show a percentage in the lower left hand corner of how much of the file is being shown.

```bash
more <FILE>
```

---

## Move
The `mv` command is used to move and rename files and folders.

```bash
mv <FILE_OR_FOLDER> <NEW_FILE_OR_FOLDER>
```

For example, rename `file.txt` with the new name `new-file.txt`:

```bash
mv file.txt new-file.txt
```

Or, move `folder` into its parent's parent:

```bash
mv folder ../
```

---

## Copy
Copies a file or folder.

```bash
cp <ORIGINAL_FILE> <COPY_OF_ORIGINAL_FILE>
```

To copy a folder, you need to follow the `cp` command with the `-r` flag/option in order to copy directories recursively:

```bash
cp -r <ORIGINAL_FOLDER> <COPY_OF_ORIGINAL_FOLDER>
```

---

## Shutdown
```bash
shutdown
```

Or, to stop the system without shutting off, use

```bash
halt
```

---
