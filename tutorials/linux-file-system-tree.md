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

## `/dev` (for devices)

* Contains special device files (AKA device nodes) that represent devices built into or connected to the system, such as a connected keyboard/mouse via USB.
* Such device files represent character (byte-stream) and block I/O devices.
* Network devices stream via `eth1` or `wlan0`, for example.
* All modern Linux distributions, or distros, create nodes in `/dev` as needed.

---

## `/proc` (for process)

* Mounts a pseudo-filesystem in which all data exist *only* in memory, not on disk.
* Similar to `/dev`, `/proc` is empty on a non-running system.
* Each active process has its own subdirectory that provides detailed information about the state of the process, including the resources it’s using, and its history.
* Items in `/proc` are referred to as virtual files.
* Many are listed as `0` in size, but, in reality, are very large.
* `/proc/filesystems` and `/proc/sys/` provide system configuration information.

---

## `/tmp`
* Stores temporary files.
* Available to all users and applications.
* Do not depend on files stored in `/tmp`, as they can be purged by a user or via a chron job.
* Some Linux distros use `/tmp` as a simple mount point that loads its contents in RAM. Thus, large files can harm the system through RAM exhaustion.

---
