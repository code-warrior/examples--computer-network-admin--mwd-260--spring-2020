# The Linux Filesystem Tree via the Filesystem Hierarchy Standard, or FHS

## The Root (`/`) Directory

* It’s a unique partition and filesystem.
* Must contain *all* essential files required to boot the system and mount other filesystems.
* The startup data consists of config files, boot loader info, etc (not `/etc`).
* The root directory must be adequate to…
   - Restore system from backup, such as removable media
   - Recover/repair system, via an experienced user
* No app or package should create new subdirectories of the root directory.

---

## `/bin` (for binaries)

* Contains executables and scripts required by system administrators.
* `/bin` must also be accessible in single user and recovery modes.
* May not include subdirectories.
* There are about 30 essential programs that must exist in `/bin`, such as `rm`, `cp`, `mkdir`, and `tar`, to name a few.
* Less important programs are placed in `/usr/bin`.
* Programs required strictly by non-root users also go in `/usr/bin`.

---
