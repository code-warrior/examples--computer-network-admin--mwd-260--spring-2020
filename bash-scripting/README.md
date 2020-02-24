## Internal Commands
* Are built in to bash.
* Are loaded into RAM for speed.
* Run `help` for a list of internal commands.

## External Commands
* Are those *you* write.
* Are slower to run, because they must be loaded from disk.

**Note**: If an internal and an external script share the same name, the internal script is prioritized.

---

## Scripts
* Start every script with the following “shebang” line:
```bash
#!/bin/bash
```
* The hash sign (`#`) begins a comment.
* Upon successful completion, exit your scripts with a status of 0.
* The current folder is not in your path for scripts to run. Here are your options:
   1. Make a directory called `bin` in your home folder, then append the following to your `PATH` in `.bashrc:` `:/home/$USER/bin`
   2. Put your scripts in `/usr/local/bin`
   3. When running a script, prepend the script’s name in The Terminal with `./`. For example, to run `my-script.sh` you would type `./my-script.sh`.
* Give your scripts permission to run: `chmod +x SCRIPT` or `chmod 744 SCRIPT`.
* If you suspect that a script you author might conflict with a command that is already in your `PATH`, run `which`. **Note**: This will not tell you if the command is internal or external.
* Run `type` on a command to find out if the command is internal or external.

Read more from [Bash Guide for Beginners](http://tldp.org/LDP/Bash-Beginners-Guide/html/index.html).
For an advanced treatment of bash scripting, read [Advanced Bash-Scripting Guide](http://tldp.org/LDP/abs/html/index.html).
