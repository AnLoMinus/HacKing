# Awesome Privilege Escalation
A curated list of awesome privilege escalation

## Table of Contents

* [Linux](#linux)
    * [Escape restricted shells](#escape-restricted-shells)
    * [SUDO and SUID](#sudo-and-suid)
    * [Capabilities](#capabilities)
    * [Tools](#tools)
        * [Find CVEs](#find-cves)
    * [Chkrootkit](#chkrootkit)
    * [NFS](#nfs)
    * [Presentations](#presentations)
* [Linux and Windows](#linux-and-windows)

## Linux
 - [A guide to Linux Privilege Escalation](https://payatu.com/guide-linux-privilege-escalation/)
 - [Attack and Defend: LinuxPrivilege Escalation Techniques of 2016](https://www.sans.org/reading-room/whitepapers/linux/attack-defend-linux-privilege-escalation-techniques-2016-37562): This paper will examine Linux privilege escalation techniques used throughout 2016 in detail, highlighting how these techniques work and how adversaries are using them.
 - [Back To The Future: Unix Wildcards Gone Wild](https://www.defensecode.com/public/DefenseCode_Unix_WildCards_Gone_Wild.txt): This article will cover one interesting old-school Unix hacking technique, that will still work in 2013.
 - [Basic Linux Privilege Escalation](https://blog.g0tmi1k.com/2011/08/basic-linux-privilege-escalation/): by g0tmi1k
 - [Enumeration is the Key](https://medium.com/basic-linux-privilege-escalation/basic-linux-privilege-escalation-966de11f9997): by Marcos Tolosa
 - [Hackers Hut](https://www.win.tue.nl/~aeb/linux/hh/hh.html): Some random hacking hints, mainly from a Linux point of view.
 - [Hacking Linux Part I: Privilege Escalation](http://www.dankalia.com/tutor/01005/0100501004.htm)
 - [How privileges work in operating systems?](https://www.future-processing.pl/blog/privilege-escalation/)
 - [Linux elevation of privileges ToC](https://guif.re/linuxeop)
 - [Linux - Privilege Escalation](https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Linux%20-%20Privilege%20Escalation.md): Methodology from PayloadsAllTheThings 
 - [Linux Privilege Escalation](https://percussiveelbow.github.io/linux-privesc/): an introduction to Linux escalation techniques, mainly focusing on file/process permissions, but along with some other stuff too.
 - [Linux Privilege Escalation](https://github.com/lamontns/pentest/blob/master/privilege-escalation/linux-privilege-escalation.md): Linux Privilege Escalation by lamontns.
 - [Linux Privilege Escalation](https://book.hacktricks.xyz/linux-unix/privilege-escalation): by HackTricks
 - [Linux Privilege Escalation via Dynamically Linked Shared Object Library](https://www.contextis.com/en/blog/linux-privilege-escalation-via-dynamically-linked-shared-object-library): How RPATH and Weak File Permissions can lead to a system compromise.
 - [Local Linux Enumeration & Privilege Escalation Cheatsheet](https://www.rebootuser.com/?p=1623): a few Linux commands that may come in useful when trying to escalate privileges on a target system.
 - [Local Linux Enumeration & Privilege Escalation](https://hackingandsecurity.blogspot.com/2016/05/local-linux-enumeration-privilege.html): a few Linux commands that may come in useful when trying to escalate privileges on a target system.
 - [Local Linux privilege escalation overview](https://myexperiments.io/linux-privilege-escalation.html): This article will give an overview of the basic Linux privilege escalation techniques. It separates the local Linux privilege escalation in different scopes: kernel, process, mining credentials, sudo, cron, NFS, and file permission.
 - [Penetration-Testing-Grimoire/Privilege Escalation/linux.md](https://github.com/weaknetlabs/Penetration-Testing-Grimoire/blob/master/Privilege%20Escalation/linux.md)
 - [PENETRATION TESTING PRACTICE LAB - VULNERABLE APPS / SYSTEMS](https://www.amanhardikar.com/mindmaps/Practice.html)
 - [Pentest Book - Privilege Escalation](https://chryzsh.gitbooks.io/pentestbook/privilege_escalation_-_linux.html): common Linux privilege escalation techniques.
 - [POST CATEGORY : Privilege Escalation](https://www.hackingarticles.in/category/privilege-escalation/): Privilege escalation post category in Raj Chandel's Blog.
 - [Privilege Escalation Cheatsheet (Vulnhub)](https://github.com/Ignitetechnologies/Privilege-Escalation): This cheasheet is aimed at the CTF Players and Beginners to help them understand the fundamentals of Privilege Escalation with examples.
 - [Privilege escalation: Linux](https://vulp3cula.gitbook.io/hackers-grimoire/post-exploitation/privesc-linux)
 - [Privilege Escalation & Post-Exploitation](https://github.com/rmusser01/Infosec_Reference/blob/master/Draft/PrivescPostEx.md)
 - [Reach the root! How to gain privileges in Linux?](https://hackmag.com/security/reach-the-root/)
 - [TTY Input Pushback Privilege Escalation](https://www.halfdog.net/Security/2012/TtyPushbackPrivilegeEscalation/): When user working as root switches to another user with su and happens to execute the pushback program as that user, the tty input data pushed back is executed in the shell and context of user root.
 - [Understanding Privilege Escalation](http://www.admin-magazine.com/Articles/Understanding-Privilege-Escalation): Some techniques malicious users employ to escalate their privileges on a Linux system.

### Escape restricted shells
 - [Breaking out of rbash using scp](http://pentestmonkey.net/blog/rbash-scp)
 - [Escaping from Restricted Shell and Gaining Root Access to SolarWinds Log & Event Manager (SIEM) Product](https://pentest.blog/unexpected-journey-4-escaping-from-restricted-shell-and-gaining-root-access-to-solarwinds-log-event-manager-siem-product/)
 - [Escaping Restricted Linux Shells](https://pen-testing.sans.org/blog/pen-testing/2012/06/06/escaping-restricted-linux-shells): Resource for penetration testers to assist them when confronted with a restricted shell.
 - [Linux Restricted Shell Bypass](https://www.exploit-db.com/docs/english/44592-linux-restricted-shell-bypass-guide.pdf)
 - [Restricted Linux Shell Escaping Techniques](https://fireshellsecurity.team/restricted-linux-shell-escaping-techniques/): The focus of this article is on discussing and summarizing different techniques to escape common Linux restricted shells and also simple recommendations for administrators to protect against it.

### SUDO and SUID
 - [Abusing SUDO](https://touhidshaikh.com/blog/?p=790): Some of the binary which helps you to escalate privilege using the sudo command.
 - [Gaining a Root shell using MySQL User Defined Functions and SETUID Binaries](https://infamoussyn.wordpress.com/2014/07/11/gaining-a-root-shell-using-mysql-user-defined-functions-and-setuid-binaries/): How a MySQL User Defined Function (UDF) and a SETUID binary can be used to elevate user privilege to a root shell.
 - [GTFOBins](https://gtfobins.github.io/): GTFOBins is a curated list of Unix binaries that can be exploited by an attacker to bypass local security restrictions.
 - [How I got root with Sudo](https://www.securusglobal.com/community/2014/03/17/how-i-got-root-with-sudo/)
 - [Sudo (LD_PRELOAD)](https://touhidshaikh.com/blog/?p=827): Privilege Escalation from an LD_PRELOAD environment variable. 

### Capabilities
 - [An Interesting Privilege Escalation vector (getcap/setcap)](https://nxnjz.net/2018/08/an-interesting-privilege-escalation-vector-getcap/)
 - [Capabilities](https://wiki.archlinux.org/index.php/Capabilities)
 - [Exploiting capabilities](http://blog.sevagas.com/IMG/pdf/exploiting_capabilities_the_dark_side.pdf): Parcel root power, the dark side of capabilities
 - [getcap, setcap and file capabilities](https://www.insecure.ws/linux/getcap_setcap.html)
 - [Spicing up your own access with capabilities](https://www.redpill-linpro.com/sysadvent/2016/12/06/spicing-up-your-access.html)

### Tools
 - [AutoLocalPrivilegeEscalation](https://github.com/ngalongc/AutoLocalPrivilegeEscalation): An automated script that download potential exploit for linux kernel from exploitdb, and compile them automatically.
 - [BeRoot](https://github.com/AlessandroZ/BeRoot): BeRoot Project is a post exploitation tool to check common misconfigurations to find a way to escalate our privilege.
exploits.
 - [exploit-suggester](https://github.com/pentestmonkey/exploit-suggester): This tool reads the output of “showrev -p” on Solaris machines and outputs a list of exploits that you might want to try.
is intended to be executed locally on a Linux box to enumerate basic system info and search for common privilege escalation vectors such as word writable files, misconfigurations, clear-text password and applicable
 - [kernelpop](https://github.com/spencerdodd/kernelpop): kernelpop is a framework for performing automated kernel vulnerability enumeration and exploitation.
 - [LES](https://github.com/mzet-/linux-exploit-suggester): LES: Linux privilege escalation auditing tool
 - [LinEnum](https://github.com/rebootuser/LinEnum): Scripted local Linux enumeration & privilege escalation checks
 - [LinPEAS](https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/tree/master/linPEAS): Linux Privilege Escalation Awesome Script
 - [Linux Exploit Suggester 2](https://github.com/jondonas/linux-exploit-suggester-2): Next-generation exploit suggester based on Linux_Exploit_Suggester
 - [Linux_Exploit_Suggester](https://github.com/InteliSecureLabs/Linux_Exploit_Suggester): Linux Exploit Suggester; based on operating system release number.
 - [linux-kernel-exploits](https://github.com/SecWiki/linux-kernel-exploits)
 - [Linuxprivchecker.py](https://github.com/sleventyeleven/linuxprivchecker): This script is intended to be executed locally on a Linux box to enumerate basic system info and search for common privilege escalation vectors such as world writable files, misconfigurations, clear-text passwords and applicable exploits.
 - [Linux Privilege Escalation Check Script](https://github.com/linted/linuxprivchecker): Originally forked from the linuxprivchecker.py (Mike Czumak), this script is intended to be executed locally on a Linux box to enumerate basic system info and search for common privilege escalation vectors such as word writable files, misconfigurations, clear-text password and applicable exploits.
 - [linux-smart-enumeration](https://github.com/diego-treitos/linux-smart-enumeration): Linux enumeration tools for pentesting and CTFs
 - [linux-soft-exploit-suggester](https://github.com/belane/linux-soft-exploit-suggester): linux-soft-exploit-suggester finds exploits for all vulnerable software in a system helping with the privilege escalation.
 - [PrivEsc](https://github.com/1N3/PrivEsc): A collection of Windows, Linux and MySQL privilege escalation scripts and exploits.
 - [pspy](https://github.com/DominicBreuker/pspy): unprivileged Linux process snooping
 - [traitor](https://github.com/liamg/traitor): Automatically exploit low-hanging fruit to pop a root shell. Linux privilege escalation made easy!
 - [unix-privesc-check](https://github.com/pentestmonkey/unix-privesc-check): Shell script to check for simple privilege escalation vectors on Unix systems
 - [Unix-Privilege-Escalation-Exploits-Pack](https://github.com/Kabot/Unix-Privilege-Escalation-Exploits-Pack): Exploits for getting local root on Linux, BSD, AIX, HP-UX, Solaris, RHEL, SUSE etc.
 - [uptux](https://github.com/initstring/uptux): Specialized privilege escalation checks for Linux systems.

#### Find CVEs
 - [active-cve-check](https://github.com/davbo/active-cve-check): Checks a list of packages against the "active" (not yet patched) CVE's as listed in the Ubuntu CVE Tracker.
 - [Arch-Audit](https://www.2daygeek.com/arch-audit-a-tool-to-check-vulnerable-packages-in-arch-linux/): A tool to check vulnerable packages in Arch Linux.
 - [cve-check-tool](https://github.com/clearlinux/cve-check-tool): Original Automated CVE Checking Tool.
 - [LPVS](https://github.com/lwindolf/lpvs): Linux Package Vulnerability Scanner for CentOS and Ubuntu.

### Chkrootkit
 - [Local root exploit in Chkrootkit](https://lepetithacker.wordpress.com/2017/04/30/local-root-exploit-in-chkrootkit/): Security researchers have found an local exploit for Chkrootkit 0.49 who allow to a simple user to make root’s commands.

### NFS
 - [Exploiting a Mis-Configured NFS Share](https://www.computersecuritystudent.com/SECURITY_TOOLS/METASPLOITABLE/EXPLOIT/lesson4/index.html)
 - [Linux Privilege Escalation using Misconfigured NFS](https://www.hackingarticles.in/linux-privilege-escalation-using-misconfigured-nfs/): How to exploit a misconfigured NFS share to gain root access to a remote host machine.
 - [NFS weak permissions](https://touhidshaikh.com/blog/?p=788)
 - [Linux Privilege Escalation using weak NFS permissions](https://haiderm.com/linux-privilege-escalation-using-weak-nfs-permissions/): t Linux Privilege Escalation using weak NFS permissions in “/etc/exports”. by Haider Mahmood

### Presentations
 - [Linux privilege escalation for fun, profit, and all around mischief](https://www.irongeek.com/i.php?page=videos/bsidesaugusta2016/its-too-funky-in-here04-linux-privilege-escalation-for-fun-profit-and-all-around-mischief-jake-williams): Examine opportunities for privilege escalation that can vault you from zero to hero in a few easy steps.
 - [Linux Privilege Escalation - Tradecraft Security Weekly #22](https://www.youtube.com/watch?v=oYHAi0cgur4): Methodology for performing various privilege escalation techniques against Linux-based systems.
 - [Privilege Escalation FTW](https://www.youtube.com/watch?v=yXe4X-AIbps): Demonstrate various privilege escalation techniques that are possible primarily due to misconfigurations.
