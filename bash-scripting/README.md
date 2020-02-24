## Internal Commands
* Are built in to bash.
* Are loaded into RAM for speed.
* Run `help` for a list of internal commands.

## External Commands
* Are those you write.
* Are slower to run, because they must be loaded from disk.

**Note**: If an internal and an external script has the same name, the internal script is prioritized.

---

## Scripts

* Start every script with the following
```bash
#!/bin/bash
```
* The hash sign (#) begins a comment.
* Exit your scripts with a status of 0.
* The current folder is not in your path. Here are your options:
   1. Make a directory called `bin` in your home folder, then append the following to your `PATH` in `.bashrc:` `:/home/$USER/bin`
   2. Put your scripts in `/usr/local/bin`
   3. When running a script, prepend it with `./`. For example, to run `my-script.sh` you would type `./my-script.sh` from The Terminal.
* Give your scripts permission to run: `chmod +x SCRIPT` or `chmod 744 SCRIPT`.
* If you suspect that a script you author might conflict with a command that is already in your `PATH`, run `which`, which will not tell you if the command is internal or external.
* Run `type` on a command to find out if the command is internal or external

Read more at http://tldp.org/LDP/Bash-Beginners-Guide/html/index.html
An advanced document is available at http://tldp.org/LDP/abs/html/index.html
