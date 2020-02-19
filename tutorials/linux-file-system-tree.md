# The Linux Filesystem Tree via the Filesystem Hierarchy Standard, or FHS

Read more [here](https://refspecs.linuxfoundation.org/FHS_3.0/fhs-3.0.pdf)

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

## `/tmp` (for temporary)

* Stores temporary files.
* Available to all users and applications.
* Do not depend on files stored in `/tmp`, as they can be purged by a user or via a chron job.
* Some Linux distros use `/tmp` as a simple mount point that loads its contents in RAM. Thus, large files can harm the system through RAM exhaustion.

---

## `/boot`

### `vmlinuz` (Virtual Machine Linux Zipped)
The compressed Linux kernel

### `initramfs` (Initial RAM File System)
* The initial RAM filesystem, which is mounted before the real root filesystem becomes available.
* Sometimes called `initrd` for “initial ram disk”. This is older.
* Stores data used before the kernel begins executing user-mode programs.
* The following two files are used for info and debugging:
   1. `config` (Used to configure the kernel compilation)
   2. `System.map` (Kernel symbol table, used for debugging)
* In older UNIX machines, all these files appeared in `/`.

---

## `/mnt` (for mount)

* This directory is provided so that the system administrator can temporarily mount a filesystem when needed.
* It’s commonly used for network filesystems, including:
   + NFS (Sun’s Network File System)
   + Samba (Windows interoperability suite of programs for Linux and Unix)
   + CIFS (Common Internet File System)
   + AFS (Andrew File System from Carnegie Mellon)
* `/mnt` was the original mount point for media, which are now mounted under `/media` or `/run/media`.
* `/mnt` is temporary, and thus, should not be used by installation programs. Use `/tmp` or another temporary directory not currently being used.

---

## `/root` (pronounced “slash-root”)

* Home directory for the root user.
* The root account associated with this directory should *only* be used for actions that require superuser privilege.

---

## `/media`

* Loads removable media, such as CDs, DVDs, and USB drives.
* Linux systems mount such media dynamically upon insertion, and `udev` (the dynamic device manager) creates directories and then mounts the removable filesystems there.
* Upon unmounting and removal, the directories used as mount points disappear.
* If the media has more than one partition and filesystem, more than one entry will appear.
* On many Linux distros, the file manager (such as Nautilus) will pop up when the media is mounted.

---
