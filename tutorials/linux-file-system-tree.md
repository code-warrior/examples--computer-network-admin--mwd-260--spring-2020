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
