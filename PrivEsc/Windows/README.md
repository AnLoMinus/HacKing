# Awesome Privilege Escalation
A curated list of awesome privilege escalation

## Table of Contents


* [Windows](#windows)
    * [DLL Hijacking](#dll-hijacking)
    * [Potato](#potato)
    * [Unquoted services with spaces](#unquoted-services-with-spaces)
    * [Groups.xml](#groupsxml)
    * [Tools](#tools-1)
    * [Presentations](#presentations-1)
* [Linux and Windows](#linux-and-windows)
* [Docker](#docker)
    * [Tools](#tools-2)
    * [Presentations](#presentations-2)
* [Cloud](#cloud)
   * [AWS](#aws)
   * [GCP](#gcp)

## Windows
 - [awesome-windows-security](https://github.com/chryzsh/awesome-windows-security#-privilege-escalation)
 - [LOLBAS](https://lolbas-project.github.io/): Living Off The Land Binaries and Scripts (and also Libraries)
 - [OSCP Windows PrivEsc - Part 1](https://butter0verflow.github.io/oscp/OSCP-WindowsPrivEsc-Part1/)
 - [Privilege Escalation](https://www.offensive-security.com/metasploit-unleashed/privilege-escalation/): There are also various other (local) exploits that can be used to also escalate privileges.
 - [Privilege Escalation Windows](https://sushant747.gitbooks.io/total-oscp-guide/privilege_escalation_windows.html)
 - [Privilege escalation: Windows](https://vulp3cula.gitbook.io/hackers-grimoire/post-exploitation/privesc-windows)
 - [Windows elevation of privileges ToC](https://guif.re/windowseop)
 - [Windows Local Privilege Escalation](https://book.hacktricks.xyz/windows/windows-local-privilege-escalation): by HackTricks
 - [Windows Post Gather Modules](https://www.offensive-security.com/metasploit-unleashed/windows-post-gather-modules/): Metasploit offers a number of post exploitation modules that allow for further information gathering on your target network.
 - [Windows Priv Esc](https://www.sock-raw.org/wiki/doku.php/windows_priv_esc)
 - [Windows Privilege Escalation Fundamentals](https://www.fuzzysecurity.com/tutorials/16.html)
 - [Windows Privilege Escalation Guide](https://www.absolomb.com/2018-01-26-Windows-Privilege-Escalation-Guide/)
 - [Windows-Privilege-Escalation](https://github.com/frizb/Windows-Privilege-Escalation): Step-by-step windows privlege escalation methodology.
 - [Windows-Privilege-Escalation-Resources](https://github.com/Gr1mmie/Windows-Privilege-Escalation-Resources): Compilation of Resources from TCM's Windows Priv Esc Udemy Course. By Gr1mmie
 - [Windows - Privilege Escalation](https://github.com/swisskyrepo/PayloadsAllTheThings/blob/master/Methodology%20and%20Resources/Windows%20-%20Privilege%20Escalation.md)
 - [Windows Privilege Escalation](http://www.bhafsec.com/wiki/index.php/Windows_Privilege_Escalation)
 - [Windows Privilege Escalation](https://github.com/lamontns/pentest/blob/master/privilege-escalation/windows-privilege-escalation.md): Windows Privilege Escalation by lamontns.
 - [Windows Privilege Escalations](https://www.exploit-db.com/docs/46131)


### DLL Hijacking
 - [DLL Hijacking](https://ired.team/offensive-security/privilege-escalation/t1038-dll-hijacking): DLL Search Order Hijacking for privilege escalation, code execution, etc. by Red Teaming Experiments
 - [DLL Hijacking](https://pentestlab.blog/2017/03/27/dll-hijacking/): by PentestLab
 - [DLL Search Order Hijacking](https://attack.mitre.org/techniques/T1038/): by MITRE
 - [PrivEsc: DLL Hijacking](https://gracefulsecurity.com/privesc-dll-hijacking/) 
 - [Windows Privilege Escalation via DLL Hijacking](https://hacknpentest.com/windows-privilege-escalation-dll-hijacking/): Crystal-clear view on one of the most used techniques for privilege escalation by the Threat Actors. by HacknPentest


### Potato
 - [Hot Potato](https://pentestlab.blog/2017/04/13/hot-potato/): Hot potato is the code name of a Windows privilege escalation technique that was discovered by Stephen Breen. This technique is actually a combination of two known windows issues  like NBNS spoofing and NTLM relay with the implementation of a fake WPAD proxy server which is running locally on the target host.
 - [Hot Potato](https://securityonline.info/hot-potato-windows-privilege-escalation-metasploit-powershellhot-potato-windows-privilege-escalation/): Windows 7, 8, 10, Server 2008, Server 2012 Privilege Escalation in Metasploit & PowerShell.
 - [Hot Potato – Windows Privilege Escalation](https://foxglovesecurity.com/2016/01/16/hot-potato/): Privilege Escalation on Windows 7, 8, 10, Server 2008, Server 2012 … and a new network attack.
 - [Juicy Potato (abusing the golden privileges)](https://ohpe.it/juicy-potato/)
 - [No more JuicyPotato? Old story, welcome RoguePotato!](https://decoder.cloud/2020/05/11/no-more-juicypotato-old-story-welcome-roguepotato/): by decoder_it and splinter_code/antonioCoco
 - [Remote Potato](https://pentestlab.blog/2021/05/04/remote-potato-from-domain-user-to-enterprise-admin/): Remote Potato – From Domain User to Enterprise Admin
 - [Rotten Potato – Privilege Escalation from Service Accounts to SYSTEM](https://foxglovesecurity.com/2016/09/26/rotten-potato-privilege-escalation-from-service-accounts-to-system/)

### Unquoted services with spaces
 - [Practical Guide to exploiting the unquoted service path vulnerability in Windows](https://trustfoundry.net/practical-guide-to-exploiting-the-unquoted-service-path-vulnerability-in-windows/)
 - [PrivEsc: Unquoted Service Path](https://www.gracefulsecurity.com/privesc-unquoted-service-path/)
 - [Unquoted Service Path](https://pentestlab.blog/2017/03/09/unquoted-service-path/)
 - [UNQUOTED SERVICE PATHS](https://www.commonexploits.com/unquoted-service-paths/)
 - [Windows Privilege Escalation — Part 1 (Unquoted Service Path)](https://medium.com/@SumitVerma101/windows-privilege-escalation-part-1-unquoted-service-path-c7a011a8d8ae)
 - [Windows Privilege Escalation – Unquoted Services](https://www.ethicalhacker.net/community/windows-privilege-escalation-unquoted-services/)
 - [Windows Privilege Escalation via Unquoted Service Paths](https://hausec.com/2018/10/05/windows-privilege-escalation-via-unquoted-service-paths/)

### Groups.xml
 - [Finding Passwords in SYSVOL & Exploiting Group Policy Preferences](https://adsecurity.org/?p=2288)
 - [gpp-decrypt Package Description](https://tools.kali.org/password-attacks/gpp-decrypt): A simple ruby script that will decrypt a given GPP encrypted string.

### PrintNightmare
 - [Universal Privilege Escalation and Persistence](https://pentestlab.blog/2021/08/02/universal-privilege-escalation-and-persistence-printer/): The Print Spooler is responsible to manage and process printer jobs. It runs as a service with SYSTEM level privileges on windows environments.

### Tools
 - [JAWS - Just Another Windows (Enum) Script](https://github.com/411Hall/JAWS): JAWS is PowerShell script designed to help penetration testers (and CTFers) quickly identify potential privilege escalation vectors on Windows systems. It is written using PowerShell 2.0 so 'should' run on every Windows version since Windows 7.
 - [juicy-potato](https://github.com/ohpe/juicy-potato): A sugared version of RottenPotatoNG, with a bit of juice, i.e. another Local Privilege Escalation tool, from a Windows Service Accounts to NT AUTHORITY\SYSTEM.
 - [Potato](https://github.com/foxglovesec/Potato): Potato Privilege Escalation on Windows 7, 8, 10, Server 2008, Server 2012.
 - [PowerSploit](https://github.com/PowerShellMafia/PowerSploit): PowerSploit is a collection of Microsoft PowerShell modules that can be used to aid penetration testers during all phases of an assessment.
 - [PrivescCheck](https://github.com/itm4n/PrivescCheck): Enumerate common Windows security misconfigurations which can be leveraged for privilege escalation and gather various information which might be useful for exploitation and/or post-exploitation, by itm4n.
 - [RemotePotato0](https://github.com/antonioCoco/RemotePotato0): Just another "Won't Fix" Windows Privilege Escalation from User to Domain Admin by antonioCoco.
 - [RoguePotato](https://github.com/antonioCoco/RoguePotato): Another Windows Local Privilege Escalation from Service Account to System by splinter_code/antonioCoco
 - [RottenPotato](https://github.com/foxglovesec/RottenPotato): RottenPotato local privilege escalation from service account to SYSTEM. (No longer maintained)
 - [RottenPotatoNG](https://github.com/breenmachine/RottenPotatoNG): New version of RottenPotato as a C++ DLL and standalone C++ binary - no need for meterpreter or other tools.
 - [Seatbelt](https://github.com/GhostPack/Seatbelt): Project that performs a number of security oriented host-survey "safety checks" relevant from both offensive and defensive security perspectives.        
 - [SessionGopher](https://github.com/Arvanaghi/SessionGopher): SessionGopher is a PowerShell tool that finds and decrypts saved session information for remote access tools.
 - [Sherlock](https://github.com/rasta-mouse/Sherlock/): PowerShell script to quickly find missing software patches for local privilege escalation vulnerabilities. (Deprecated)
 - [SweetPotato](https://github.com/CCob/SweetPotato):  Local Service to SYSTEM privilege escalation from Windows 7 to Windows 10 / Server 2019 by CCob
 - [Tater](https://github.com/Kevin-Robertson/Tater): Tater is a PowerShell implementation of the Hot Potato Windows Privilege Escalation exploit.
 - [Watson](https://github.com/rasta-mouse/Watson): Watson is a .NET tool designed to enumerate missing KBs and suggest exploits for Privilege Escalation vulnerabilities.
 - [WindowsEnum](https://github.com/absolomb/WindowsEnum): A Powershell Privilege Escalation Enumeration Script.
 - [Windows-Exploit-Suggester](https://github.com/AonCyberLabs/Windows-Exploit-Suggester): This tool compares a targets patch levels against the Microsoft vulnerability database in order to detect potential missing patches on the target. It also notifies the user if there are public exploits and Metasploit modules available for the missing bulletins. By AonCyberLabs
 - [Windows Exploit Suggester - Next Generation (WES-NG)](https://github.com/bitsadmin/wesng): WES-NG is a tool based on the output of Windows' systeminfo utility which provides the list of vulnerabilities the OS is vulnerable to, including any exploits for these vulnerabilities. Every Windows OS between Windows XP and Windows 10, including their Windows Server counterparts, is supported. By bitsadmin
 - [windows-privesc-check](https://github.com/pentestmonkey/windows-privesc-check): Standalone executable that runs on Windows systems. It tries to find misconfigurations that could allow local unprivileged users to escalate privileges to other users or to access local apps (e.g. databases).
 - [winPEAS](https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/tree/master/winPEAS): Windows Privilege Escalation Awesome Scripts
 - [WinPwnage](https://github.com/rootm0s/WinPwnage): UAC bypass, Elevate, Persistence and Execution methods. The goal of this repo is to study the Windows penetration techniques.

### Presentations
 - [Level Up! Practical Windows Privilege Escalation - Andrew Smith](https://www.youtube.com/watch?v=PC_iMqiuIRQ)
 - [Level Up! - Practical Windows Privilege Escalation (Presentation Slides)](https://pt.slideshare.net/jakx_/level-up-practical-windows-privilege-escalation)
 - [SANS Webcast: Pen Testing with PowerShell - Local Privilege Escalation Techniques](https://www.youtube.com/watch?v=bAnohAiAQ7U)
 - [Windows Privilege Escalation Techniques (Local) - Tradecraft Security Weekly #2](https://www.youtube.com/watch?v=DlJyKgfkoKQ)
 - [Windows Privilege Escalation Unquoted Service - Part 1](https://www.youtube.com/watch?v=G9yn3qNq7Vw)
 - [Windows Privilege Escalation Unquoted Service - Part 2](https://www.youtube.com/watch?v=jfZ8FKTFNTE)
 - [Windows Privilege Escalation Unquoted Service - Part 3](https://www.youtube.com/watch?v=RORaqh1DIco)

## Linux and Windows
 - [Awesome-Hacking-Resources (Privilege escalation section)](https://github.com/vitalysim/Awesome-Hacking-Resources#privilege-escalation): A collection of hacking / penetration testing resources to make you better!
 - [Metasploit Local Exploit Suggester: Do Less, Get More!](https://blog.rapid7.com/2015/08/11/metasploit-local-exploit-suggester-do-less-get-more/)
 - [My 5 Top Ways to Escalate Privileges](https://www.trustwave.com/en-us/resources/blogs/spiderlabs-blog/my-5-top-ways-to-escalate-privileges/): Bruno Oliveira's top 5 favorite ways for accomplishing privilege escalation in the most practical ways possible.
 - [Privilege Escalation](https://pentestlab.blog/category/privilege-escalation/): Privilege Escalation category by pentestlab.blog
 - [Recipe for Root](https://recipeforroot.com/): Your Cookbook for Privilege Escalation
 - [Windows / Linux Local Privilege Escalation Workshop](https://github.com/sagishahar/lpeworkshop)

## Docker
 - [Bypassing Docker Authz Plugin and Using Docker-Containerd for Privesc](https://staaldraad.github.io/post/2019-07-11-bypass-docker-plugin-with-containerd/): by Staaldraad.
 - [Container security notes](https://gist.github.com/FrankSpierings/5c79523ba693aaa38bc963083f48456c)
 - [Dirty COW - (CVE-2016-5195) - Docker Container Escape](https://blog.paranoidsoftware.com/dirty-cow-cve-2016-5195-docker-container-escape/)
 - [Docker Breakout](https://book.hacktricks.xyz/linux-unix/privilege-escalation/docker-breakout): by HackTricks
 - [Docker security checklist](https://github.com/PercussiveElbow/docker-security-checklist)
 - [Don't expose the Docker socket (not even to a container)](https://web.archive.org/web/20190623234615/https://www.lvh.io/posts/dont-expose-the-docker-socket-not-even-to-a-container.html)
 - [Escaping Docker Privileged Containers](https://betterprogramming.pub/escaping-docker-privileged-containers-a7ae7d17f5a1): by Vickie Li
 - [Escaping Containers to Execute Commands on Play with Docker Servers](https://www.bleepingcomputer.com/news/security/escaping-containers-to-execute-commands-on-play-with-docker-servers/)
 - [Escaping Docker container using waitid() – CVE-2017-5123](https://www.twistlock.com/labs-blog/escaping-docker-container-using-waitid-cve-2017-5123/)
 - [Escaping the Whale: Things you probably shouldn’t do with Docker (Part 1)](https://blog.secureideas.com/2018/05/escaping-the-whale-things-you-probably-shouldnt-do-with-docker-part-1.html)
 - [Hack Allows Escape of Play-with-Docker Containers](https://threatpost.com/hack-allows-escape-of-play-with-docker-containers/140831/)
 - [Hacking Docker the Easy way](https://pt.slideshare.net/BorgHan/hacking-docker-the-easy-way)
 - [Understanding Docker container escapes](https://blog.trailofbits.com/2019/07/19/understanding-docker-container-escapes/): by Trail of Bits

### Tools
 - [BOtB](https://github.com/brompwnie/botb): BOtB is a container analysis and exploitation tool designed to be used by pentesters and engineers while also being CI/CD friendly with common CI/CD technologies.
 - [CDK](https://github.com/cdk-team/CDK): CDK is an open-sourced container penetration toolkit, offering stable exploitation in different slimmed containers without any OS dependency.
 - [Deepce](https://github.com/stealthcopter/deepce): Docker Enumeration, Escalation of Privileges and Container Escapes (DEEPCE)
 - [Dokcer-escape-tool](https://github.com/PercussiveElbow/docker-escape-tool): This tool will help identify if you're in a Docker container and try some quick escape techniques to help assess the security of your containers.
 - [PrivilegedDockerEscape](https://github.com/0x03f3/PrivilegedDockerEscape): A bash script to create an interactive shell from a privileged docker container to the container host

### Presentations
 - [Introduction to Docker Hacking](https://www.youtube.com/watch?v=XiLfEU9wK-w): by NahamSec

## Cloud
### AWS
 - [AWS-IAM-Privilege-Escalation](https://github.com/RhinoSecurityLabs/AWS-IAM-Privilege-Escalation): A centralized source of all AWS IAM privilege escalation methods released by Rhino Security Labs.

#### Tools
 - [Pacu](https://github.com/RhinoSecurityLabs/pacu): The AWS exploitation framework, designed for testing the security of Amazon Web Services environments. By RhinoSecurityLabs.

### GCP
 - [Tutorial on privilege escalation and post exploitation tactics in Google Cloud Platform environments](https://about.gitlab.com/blog/2020/02/12/plundering-gcp-escalating-privileges-in-google-cloud-platform/): Very deep-dive into manual post-exploitation tactics and techniques for GCP.
 - [GCP-IAM-Privilege-Escalation](https://github.com/RhinoSecurityLabs/GCP-IAM-Privilege-Escalation): IAM Privilege Escalation in GCP by RhinoSecurity.

#### Tools
 - [GCPBucketBrute](https://github.com/RhinoSecurityLabs/GCPBucketBrute): A script to enumerate Google Storage buckets, determine what access you have to them, and determine if they can be privilege escalated. By RhinoSecurity.
