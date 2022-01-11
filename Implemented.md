<div align="center">
  
## Scans That've Been Implemented

Below is the ever growing list of scans that have been implemented.

| Scan Type                                                    | Quick Scan         | Full Scan          | Implemented        | Printed To Screen | Save In Log        |
| ------------------------------------------------------------ | ------------------ | ------------------ | ------------------ | ----------------- | ------------------ |
| [Kernel Exploit Surgestor](#kernel-exploit-surgestor)        | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| [SUID/GUID Scan](#suid-guid-scan)                            | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| [File Capabilities Scan](#file-capabilities-scan)            | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :x:               | :heavy_check_mark: |
| [Intresting Files Scan](#intresting-files-scan)              | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| [Coredump Scan](#coredump-scan)                              | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| [Breakout Binaries Scan](#breakout-binary-scan)              | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| [SSHD Configuration Scan](#ssh-misconfiguration-scan)        | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :x:               | :heavy_check_mark: |
| [Sysctl Scan](#sysctl-parameter-hardening)                   | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| [Living Off The Land Scan](#living-off-the-land-scan)        | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| [Current User Scan](#current-user-scan)                      | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark: |
| [*.so Injection Scan](#dynamic-shared-object-injection-scan) | :x:                | :heavy_check_mark: | :heavy_check_mark: | :x:               | :heavy_check_mark: |
| [Permissions Scan](#permissions-scan)                        | :x:                | :heavy_check_mark: | :heavy_check_mark: | :x:               | :heavy_check_mark: |
| [File System Scan](#file-system-scan)                        | :x:                | :heavy_check_mark: | :heavy_check_mark: | :x:               | :heavy_check_mark: |
| Docker Scan                                                  | :heavy_check_mark: | :heavy_check_mark: | :x:                |                   | :heavy_check_mark: |
| Environment Scan                                             | :heavy_check_mark: | :heavy_check_mark: | :x:                |                   | :heavy_check_mark: |
| Privilaged Access Scan                                       | :heavy_check_mark: | :heavy_check_mark: | :x:                |                   | :heavy_check_mark: |
| Networking Scan                                              | :heavy_check_mark: | :heavy_check_mark: | :x:                |                   | :heavy_check_mark: |
| System Info Scan                                             | :heavy_check_mark: | :heavy_check_mark: | :x:                |                   | :heavy_check_mark: |
| Version Information Scan                                     | :heavy_check_mark: | :heavy_check_mark: | :x:                |                   | :heavy_check_mark: |
| Default Weak Credentials Scan                                | :heavy_check_mark: | :heavy_check_mark: | :x:                |                   | :heavy_check_mark: |
| Weak Crypto Scan                                             | :x:                | :heavy_check_mark: | :x:                |                   | :heavy_check_mark: |

  Note to print results marked as :x:, enable audit mode with the `-a` flag.

</div>

---
  
  
  ## How To Contribute

- If you can think of a scan idea that has not been implemented, raise it as an issue.
- If you know how to program, make a pull request :)
- All contributions are welcome

<div align="center">

### Scan types

#### Kernel Exploit Surgestor

This scan will check the kernel versions to see if it matches any kernel versions with known exploits.

#### SUID GUID Scan

The idea of this scan is enumerate the system looking for [SUID](https://www.hackingarticles.in/linux-privilege-escalation-using-suid-binaries/)/GUID binaries that are abnormal, or have weak permissions that can be exploited.

#### File Capabilities Scan

Recently the Linux kernel supports [capablities](https://www.man7.org/linux/man-pages/man7/capabilities.7.html), this is the prefered way to give a file a subset of root's powers to mitigate risk. Although this is a much safer way of doing things, if you're lucky enough to find abnormal capabilities set on a file then it's quite possible that you can exploit the executable to gain higher access. Enumy will check the capabilties set on all executable files on the system.

#### Interesting Files Scan

This is more of a generic scan that will try and categorize a file based off it's contents, file extension and file name. Enumy will look for files such as private keys, passwords and backup files.

#### Coredump Scan

Coredump files are a type of ELF file that contains a process's address space when the program terminates unexpectedly. Now imagine if this process's memory was readable and contained sensative information. Or even more exciting, this coredump could be for an internally developed tool that seg faulted, allowing you to develop a zero day.

#### Breakout Binary Scan

Some file should never have SUID bit set, it quite common for a lazy sys admin to give a file like docker, ionice, hexdump SUID make a bash script work or there life easier. This scan tries to find some known bad SUID binaries.

#### Sysctl Parameter Hardening

[Sysctl](https://linux.die.net/man/8/sysctl) is used to modify kernel parameters at runtime. It's also possible to query these kernel parameters and check to see if important secutiry measures like ASLR are enabled.

#### Living Off The Land scan

Living off the land is a technique used where attackers weponize what's allready on the system. They do this to remain stealthy amongst other reasons. This scan would enumerate the files that an attacker would be looking for.

#### Dynamic Shared Object Injection Scan

This scan will parse ELF files for their dependencies. If we have write access to any of these dependencies or write access to any DT_RPATH and DT_RUNPATH values then we can create our own malicious shared object into that executable potentiall compromizing the system.

#### SSH Misconfiguration Scan

SSH is one of one of the most common services that you will find in the real world. It's also quite easy to misconfigure it. This scan will check to see if it can be hardened in anyway.

#### Current User Scan

The current user scan just parses /etc/passwd. With this information we find root accounts, unprotected and missing home directories etc.

#### Permisionss Scan

This scan is going to find file that are globaly writable files, uneven permissions and unowned files. See [here](http://infosecisland.com/blogview/8494-Keeping-Linux-File-Systems-Clean-and-Secure.html) for inspiration of the scan.

#### File System Scan

This scan would be useful for people trying to harden their Linux machine. It will highlight issues such as unencrypted drives and insecure mounting configurations.
