#!/usr/bin/env bash
###############################################
#     _   _            _  ___                 #
#    | | | | __ _  ___| |/ (_)_ __   __ _     #
#    | |_| |/ _' |/ __| ' /| | '_ \ / _' |    #
#    |  _  | (_| | (__| . \| | | | | (_| |    #
#    |_| |_|\__,_|\___|_|\_\_|_| |_|\__, |    #
#                                   |___/     #
###############################################
# Name : onex
# Date : 1 November 2021
# Description : onex is a hacking tools installer and package manager for hacker's.
#
# New Name : HacKing
# New Date : 10 January 2022
# New Description : HacKing is a hacking tools installer and package manager for hacker's.
#
# Created: 10/01/2022
# Aouther: Global Anlominus RhytMix 2022
# Skils: Best Copyrigter IN the COSMOS!
# BIG THANX TO ALL COMUNITY THAT SHARE ALL THAT FREE GREAT SCRIPTS
# CREDIT: ToAllWorldCreatorsHackingTools
# Location: Made With Love IN Israel
# Tool Name: HacKing
# Source: https://github.com/Anlominus/HacKing
#
# Main Menu:
#  [1] AnonSurf: Anonymity surfing
#  [2] WebHack: Web Analysis
#  [3] VulnHack: Vulnerability Analysis
#  [4] WireLess: Wireless Analysis
#  [5] InfoGath: Information Gathering
#  [6] Forensics: Forensics Analysis
#  [7] FramXploit: Exploit Frameworks
#  [8] RAT: RemoteAccess
#  [9] HasHack: Hashing & Enctyprt Decrypt
#  [10] PayLoads: Payloads and more
#  [11] XInstKits: Installer Kits
#
#
#     Algorithen:
#
#     #Banner
#     #VNumbers
#     #VColors
#     #VMenu
#     #ManBanner
#     #FMenu
#     #Misc
#
#
#
################
#    VColors   #
################
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
purple="\033[0;35m"
cyan="\033[0;36m"
cafe="\033[0;33m"
fiuscha="\033[0;35m"
blue="\033[1;34m"
nc=""

###############
#    Banner   #
###############
function Banner(){
echo ""
echo ""
echo "$red       ###############################################"
echo "       #     _   _            _  ___                 #"
echo "       #    | | | | __ _  ___| |/ (_)_ __   __ _     #"
echo "       #    | |_| |/ _' |/ __| ' /| | '_ \ / _' |    #"
echo "       #    |  _  | (_| | (__| . \| | | | | (_| |    #"
echo "       #    |_| |_|\__,_|\___|_|\_\_|_| |_|\__, |    #"
echo "       #                                   |___/     #"
echo "$red       ###############################################"
echo "  $red[$green+$red]$cyan Github: https://www.github.com/Anlominus/HacKing $red[$green+$red]\n\n"

}

#################
#    VNumbers   #
#################
nx="x"
n00="00"
n1="1"
n2="2"
n3="3"
n4="4"
n5="5"
n6="6"
n7="7"
n8="8"
n9="9"
n10="10"
n11="11"
n13="13"
n14="14"
n15="15"
n16="16"
n17="17"
n18="18"

##################
#    VTCOLOR     #
##################
cx="$red[$green$nx$red]$cafe"
c1="$red[$green$n1$red]$cafe"
c2="$red[$green$n2$red]$cafe"
c3="$red[$green$n3$red]$cafe"
c4="$red[$green$n4$red]$cafe"
c5="$red[$green$n5$red]$cafe"
c6="$red[$green$n6$red]$cafe"
c7="$red[$green$n7$red]$cafe"
c8="$red[$green$n8$red]$cafe"
c9="$red[$green$n9$red]$cafe"
c10="$red[$green$n10$red]$cafe"
c11="$red[$green$n11$red]$cafe"

prompt="${purple}[${blue}Anlominus${cyan}@${blue}HacKing${purple}]$"

#option to store to a file
outfile="$1"

if [ "$outfile" ]; then
echo "#########################################################" >> $outfile
    echo "Local Linux Enumeration & Privilege Escalation Script" >> $outfile
    echo "#########################################################" >> $outfile
    echo "# www.rebootuser.com" >> $outfile
    echo "# version 0.4" >> $outfile
    echo "For silent (and clean output) Outfile and keyword(s) can be supplied from the command line:\n" >> $outfile
    echo "usage ./LinEnum.sh outfile.txt 'keyword1 keyword2'\n" >> $outfile
else
echo  "\n${red}#########################################################${red}"
    echo "${blue} Local Linux Enumeration & Privilege Escalation Script${red}"
    echo "${red}#########################################################${red}"
    echo "${red}# www.rebootuser.com${red}"
    echo "${red}# version 0.4${white}\n"
    echo "${blue} For silent (and clean output) Outfile and keyword(s) can be supplied from the command line:${white}\n"
    echo "${blue} usage ./LinEnum.sh outfile.txt 'keyword1 keyword2'${white}\n"
fi

#enter a single keyword that'll be used to search within *.conf, *.log & *.ini files.
if [ "$outfile" ]; then
echo "Enter keywords (space separated) that'll be used to search in *.conf, *.log and *.ini files (e.g. password cred)" >> $outfile
    #accepts search keywords from commandline
    keyword="$2"
    echo "$keyword" >> $outfile
else
echo "Enter keywords (space separated) that'll be used to search in *.conf, *.log and *.ini files (e.g. password cred)"
    #accepts search keywords from commandline
    read keyword
fi

who=`whoami`

if [ "$outfile" ]; then
echo "\n" >> $outfile
    thedate=`date`
    echo "Scan started at: $thedate" >> $outfile
    echo "\n" >> $outfile
else
echo "\n"
    echo "${green}Scan started at:"; date
    echo "${white}\n"
fi

if [ "$outfile" ]; then
echo "### SYSTEM ##############################################" >> $outfile
else
echo "${blue}### SYSTEM ##############################################${red}"
fi

unameinfo=`uname -a 2>/dev/null`

if [ "$outfile" ]; then
if [ "$unameinfo" ]; then
echo "Kernel information:\n$unameinfo" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$unameinfo" ]; then
echo "${cafe} mKernel information:${white}\n$unameinfo"
      echo "\n"
    else
      :
    fi
fi

procver=`cat /proc/version 2>/dev/null`

if [ "$outfile" ];then
if [ "$procver" ]; then
echo "Kernel information (continued):\n$procver" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$procver" ]; then
echo "${cafe} mKernel information (continued):${white}\n$procver"
      echo "\n"
    else
      :
    fi
fi

#search all *-release files for version info
release=`cat /etc/*-release 2>/dev/null`

if [ "$outfile" ];then
if [ "$release" ]; then
echo "Specific release information:\n$release" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$release" ]; then
echo "${cafe} mSpecific release information:${white}\n$release"
        echo "\n"
    else
        :
    fi
fi

hostnamed=`hostname 2>/dev/null`

if [ "$outfile" ];then
if [ "$hostnamed" ]; then
echo "Hostname:\n$hostnamed" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$hostnamed" ]; then
echo "${cafe} mHostname:${white}\n$hostnamed"
      echo "\n"
    else
      :
    fi
fi

if [ "$outfile" ]; then
echo "### USER/GROUP ##########################################" >> $outfile
else
echo "${blue}### USER/GROUP ##########################################${red}"
fi

currusr=`id 2>/dev/null`
if [ "$outfile" ]; then
if [ "$currusr" ]; then
echo "Current user/group info:\n$currusr" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$currusr" ]; then
echo "${cafe} mCurrent user/group info:${white}\n$currusr"
      echo "\n"
    else
      :
    fi
fi

grpinfo=`getent group $who 2>/dev/null`
if [ "$outfile" ];then
if [ "$grpinfo" ]; then
echo "All members of 'our' group(s):\n$grpinfo" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$grpinfo" ]; then
echo "${cafe} mAll members of 'our' group(s):${white}\n$grpinfo"
      echo "\n"
    else
      :
    fi
fi

lastlogedonusrs=`lastlog |grep -v "Never" 2>/dev/null`
if [ "$outfile" ];then
if [ "$lastlogedonusrs" ]; then
echo "Users that have previously logged onto the system:\n$lastlogedonusrs" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$lastlogedonusrs" ]; then
echo "${cafe} mUsers that have previously logged onto the system:${white}\n$lastlogedonusrs"
      echo "\n"
    else
      :
    fi
fi

usrsinfo=`cat /etc/passwd | cut -d ":" -f 1,2,3,4 2>/dev/null`
if [ "$outfile" ];then
if [ "$usrsinfo" ]; then
echo "All users and uid/gid info:\n$usrsinfo" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$usrsinfo" ]; then
echo "${cafe} mAll users and uid/gid info:${white}\n$usrsinfo"
      echo "\n"
    else
      :
    fi
fi

hashesinpasswd=`grep -v '^[^:]*:[x]' /etc/passwd 2>/dev/null`
if [ "$outfile" ]; then
if [ "$hashesinpasswd" ]; then
echo "It looks like we have password hashes in /etc/passwd!\n$hashesinpasswd" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$hashesinpasswd" ]; then
echo "${yellow}t looks like we have password hashes in /etc/passwd!${white}\n$hashesinpasswd"
      echo "\n"
    else
      :
    fi
fi

#locate custom user accounts with some 'known default' uids
readpasswd=`grep -v "^#" /etc/passwd | awk -F: '$3 == 0 || $3 == 500 || $3 == 501 || $3 == 502 || $3 == 1000 || $3 == 1001 || $3 == 1002 || $3 == 2000 || $3 == 2001 || $3 == 2002 { print }'`
if [ "$outfile" ]; then
if [ "$readpasswd" ]; then
echo "Sample entires from /etc/passwd (searching for uid values 0, 500, 501, 502, 1000, 1001, 1002, 2000, 2001, 2002):\n$readpasswd" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$readpasswd" ]; then
echo "${cafe} mSample entires from /etc/passwd (searching for uid values 0, 500, 501, 502, 1000, 1001, 1002, 2000, 2001, 2002):${white}\n$readpasswd"
      echo "\n"
    else
      :
    fi
fi

readshadow=`cat /etc/shadow 2>/dev/null`
if [ "$outfile" ]; then
if [ "$readshadow" ]; then
echo "***We can read the shadow file!\n$readshadow" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$readshadow" ]; then
echo "\e[00;33m***We can read the shadow file!${white}\n$readshadow"
      echo "\n"
    else
      :
    fi
fi

readmasterpasswd=`cat /etc/master.passwd 2>/dev/null`
if [ "$outfile" ]; then
if [ "$readmasterpasswd" ]; then
echo "***We can read the master.passwd file!\n$readmasterpasswd" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$readmasterpasswd" ]; then
echo "\e[00;33m***We can read the master.passwd file!${white}\n$readmasterpasswd"
      echo "\n"
    else
      :
    fi
fi

#all root accounts (uid 0)
if [ "$outfile" ]; then
echo "Super user account(s):" >> $outfile; grep -v "^#" /etc/passwd | awk -F: '$3 == 0 { print $1 }' >> $outfile
    echo "\n" >> $outfile
else
echo "${cafe} mSuper user account(s):${red}"; grep -v "^#" /etc/passwd | awk -F: '$3 == 0 { print $1}'
    echo "\n"
fi

#pull out vital sudoers info
sudoers=`cat /etc/sudoers 2>/dev/null`
if [ "$outfile" ]; then
if [ "$sudoers" ]; then
echo "Sudoers configuration:" >> $outfile; cat /etc/sudoers 2>/dev/null | grep -A 1 "User priv" >> $outfile; cat /etc/sudoers | grep -A 1 "Allow" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$sudoers" ]; then
echo "${cafe} mSudoers configuration:${red}"; cat /etc/sudoers 2>/dev/null | grep -A 1 "User priv"; cat /etc/sudoers | grep -A 1 "Allow"
      echo "\n"
    else
      :
    fi
fi

#can we sudo without supplying a password
sudoperms=`echo '' | sudo -S -l 2>/dev/null`
if [ "$outfile" ]; then
if [ "$sudoperms" ]; then
echo "We can sudo without supplying a password!\n$sudoperms" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$sudoperms" ]; then
echo "\e[00;33mWe can sudo without supplying a password!${white}\n$sudoperms"
      echo "\n"
    else
      :
    fi
fi

#known 'good' breakout binaries
sudopwnage=`echo '' | sudo -S -l 2>/dev/null | grep -w 'nmap\|perl\|'awk'\|'find'\|'bash'\|'sh'\|'man'\|'more'\|'less'\|'vi'\|'vim'\|'nc'\|'netcat'\|python\|ruby\|lua\|irb' | xargs -r ls -la 2>/dev/null`
if [ "$outfile" ]; then
if [ "$sudopwnage" ]; then
echo "***Possible Sudo PWNAGE!\n$sudopwnage" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$sudopwnage" ]; then
echo "\e[00;33m***Possible Sudo PWNAGE!${white}\n$sudopwnage"
      echo "\n"
    else
      :
    fi
fi

rthmdir=`ls -ahl /root/ 2>/dev/null`
if [ "$outfile" ]; then
if [ "$rthmdir" ]; then
echo "***We can read root's home directory!\n$rthmdir" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$rthmdir" ]; then
echo "\e[00;33m***We can read root's home directory!${white}\n$rthmdir"
      echo "\n"
    else
      :
    fi
fi

homedirperms=`ls -ahl /home/ 2>/dev/null`
if [ "$outfile" ]; then
if [ "$homedirperms" ]; then
echo "Are permissions on /home directories lax:\n$homedirperms" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$homedirperms" ]; then
echo "${cafe} mAre permissions on /home directories lax:${white}\n$homedirperms"
      echo "\n"
    else
      :
    fi
fi

wrfileshm=`find /home/ -perm -4 -type f -exec ls -al {} \; 2>/dev/null`
if [ "$outfile" ]; then
if [ "$wrfileshm" ]; then
echo "World-readable files within /home:\n$wrfileshm" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$wrfileshm" ]; then
echo "${cafe} mWorld-readable files within /home:${white}\n$wrfileshm"
      echo "\n"
    else
      :
    fi
fi

homedircontents=`ls -ahl ~ 2>/dev/null`
if [ "$outfile" ]; then
if [ "$homedircontents" ]; then
echo "Home directory contents:\n$homedircontents" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$homedircontents" ]; then
echo "${cafe} mHome directory contents:${white}\n$homedircontents"
      echo "\n"
    else
      :
    fi
fi

sshfiles=`find / -name "id_dsa*" -o -name "id_rsa*" -o -name "known_hosts" -o -name "authorized_hosts" -o -name "authorized_keys" 2>/dev/null |xargs -r ls -la`
if [ "$outfile" ];then
if [ "$sshfiles" ]; then
echo "SSH keys/host information found in the following locations:\n$sshfiles" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$sshfiles" ]; then
echo "${cafe} mSSH keys/host information found in the following locations:${white}\n$sshfiles"
      echo "\n"
    else
      :
    fi
fi

sshrootlogin=`grep "PermitRootLogin " /etc/ssh/sshd_config 2>/dev/null | grep -v "#" | awk '{print $2}'`
if [ "$outfile" ]; then
if [ "$sshrootlogin" = "yes" ]; then
echo "Root is allowed to login via SSH:" >> $outfile; grep "PermitRootLogin " /etc/ssh/sshd_config 2>/dev/null | grep -v "#" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$sshrootlogin" = "yes" ]; then
echo "${cafe} mRoot is allowed to login via SSH:${red}"; grep "PermitRootLogin " /etc/ssh/sshd_config 2>/dev/null | grep -v "#"
      echo "\n"
    else
      :
    fi
fi

if [ "$outfile" ]; then
echo "### ENVIRONMENTAL #######################################" >> $outfile
else
echo "${blue}### ENVIRONMENTAL #######################################${red}"
fi

pathinfo=`echo $PATH 2>/dev/null`
if [ "$outfile" ]; then
if [ "$pathinfo" ]; then
echo "Path information:\n$pathinfo" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$pathinfo" ]; then
echo "${cafe} mPath information:${white}\n$pathinfo"
      echo "\n"
    else
      :
    fi
fi

shellinfo=`cat /etc/shells 2>/dev/null`
if [ "$outfile" ]; then
if [ "$shellinfo" ]; then
echo "Available shells:\n$shellinfo" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$shellinfo" ]; then
echo "${cafe} mAvailable shells:${white}\n$shellinfo"
      echo "\n"
    else
      :
    fi
fi

if [ "$outfile" ]; then
echo "### JOBS/TASKS ##########################################" >> $outfile
else
echo "${blue}### JOBS/TASKS ##########################################${red}"
fi

cronjobs=`ls -la /etc/cron* 2>/dev/null`
if [ "$outfile" ]; then
if [ "$cronjobs" ]; then
echo "Cron jobs:\n$cronjobs" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$cronjobs" ]; then
echo "${cafe} mCron jobs:${white}\n$cronjobs"
      echo "\n"
    else
      :
    fi
fi

cronjobwwperms=`find /etc/cron* -perm -0002 -exec ls -la {} \; -exec cat {} 2>/dev/null \;`
if [ "$outfile" ]; then
if [ "$cronjobwwperms" ]; then
echo "***World-writable cron jobs and file contents:\n$cronjobwwperms" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$cronjobwwperms" ]; then
echo "\e[00;33m***World-writable cron jobs and file contents:${white}\n$cronjobwwperms"
      echo "\n"
    else
      :
    fi
fi

crontab=`cat /etc/crontab 2>/dev/null`
if [ "$outfile" ]; then
if [ "$crontab" ]; then
echo "Crontab contents:\n$crontab" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$crontab" ]; then
echo "${cafe} mCrontab contents:${white}\n$crontab"
      echo "\n"
    else
      :
    fi
fi

cronallowdeny=`ls -la /etc/cron.allow 2>/dev/null && cat /etc/cron.allow 2>/dev/null; ls -la /etc/cron.deny 2>/dev/null && cat /etc/cron.deny 2>/dev/null`
if [ "$outfile" ]; then
if [ "$cronallowdeny" ]; then
echo "Cron Alloy/Deny entries:\n$cronallowdeny" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$cronallowdeny" ]; then
echo "${cafe} mCron Alloy/Deny entries:${white}\n$cronallowdeny"
      echo "\n"
    else
      :
    fi
fi

crontabvar=`ls -la /var/spool/cron/crontabs 2>/dev/null`
if [ "$outfile" ]; then
if [ "$crontabvar" ]; then
echo "Anything interesting in /var/spool/cron/crontabs:\n$crontabvar" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$crontabvar" ]; then
echo "${cafe} mAnything interesting in /var/spool/cron/crontabs:${white}\n$crontabvar"
      echo "\n"
    else
      :
    fi
fi

anacronjobs=`ls -la /etc/anacrontab 2>/dev/null; cat /etc/anacrontab 2>/dev/null`
if [ "$outfile" ]; then
if [ "$anacronjobs" ]; then
echo "Anacron jobs and associated file permissions:\n$anacronjobs" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$anacronjobs" ]; then
echo "${cafe} mAnacron jobs and associated file permissions:${white}\n$anacronjobs"
      echo "\n"
    else
      :
    fi
fi

anacrontab=`ls -la /var/spool/anacron 2>/dev/null`
if [ "$outfile" ]; then
if [ "$anacrontab" ]; then
echo "When were jobs last executed (/var/spool/anacron contents):\n$anacrontab" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$anacrontab" ]; then
echo "${cafe} mWhen were jobs last executed (/var/spool/anacron contents):${white}\n$anacrontab"
      echo "\n"
    else
      :
    fi
fi

#pull out account names from /etc/passwd and see if any users have associated cronjobs (priv command)
cronother=`cat /etc/passwd | cut -d ":" -f 1 | xargs -n1 crontab -l -u 2>/dev/null`
if [ "$outfile" ]; then
if [ "$cronother" ]; then
echo "Jobs held by all users:\n$cronother" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$cronother" ]; then
echo "${cafe} mJobs held by all users:${white}\n$cronother"
      echo "\n"
    else
      :
    fi
fi

if [ "$outfile" ]; then
echo "### NETWORKING ##########################################" >> $outfile
else
echo "${blue}### NETWORKING ##########################################${red}"
fi

nicinfo=`/sbin/ifconfig -a 2>/dev/null`
if [ "$outfile" ]; then
if [ "$nicinfo" ]; then
echo "Network & IP info:\n$nicinfo" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$nicinfo" ]; then
echo "${cafe} mNetwork & IP info:${white}\n$nicinfo"
      echo "\n"
    else
      :
    fi
fi

nsinfo=`cat /etc/resolv.conf 2>/dev/null | grep "nameserver"`
if [ "$outfile" ]; then
if [ "$nsinfo" ]; then
echo "Nameserver(s):\n$nsinfo" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$nsinfo" ]; then
echo "${cafe} mNameserver(s):${white}\n$nsinfo"
      echo "\n"
    else
      :
    fi
fi

defroute=`route 2>/dev/null | grep default`
if [ "$outfile" ]; then
if [ "$defroute" ]; then
echo "Default route:\n$defroute" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$defroute" ]; then
echo "${cafe} mDefault route:${white}\n$defroute"
      echo "\n"
    else
      :
    fi
fi

tcpservs=`netstat -antp 2>/dev/null`
if [ "$outfile" ]; then
if [ "$tcpservs" ]; then
echo "Listening TCP:\n$tcpservs" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$tcpservs" ]; then
echo "${cafe} mListening TCP:${white}\n$tcpservs"
      echo "\n"
    else
      :
    fi
fi

udpservs=`netstat -anup 2>/dev/null`
if [ "$outfile" ]; then
if [ "$udpservs" ]; then
echo "Listening UDP:\n$udpservs" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$udpservs" ]; then
echo "${cafe} mListening UDP:${white}\n$udpservs"
      echo "\n"
    else
      :
    fi
fi

if [ "$outfile" ]; then
echo "### SERVICES #############################################" >> $outfile
else
echo "${blue}### SERVICES #############################################${red}"
fi

psaux=`ps aux 2>/dev/null`
if [ "$outfile" ]; then
if [ "$psaux" ]; then
echo "Running processes:\n$psaux" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$psaux" ]; then
echo "${cafe} mRunning processes:${white}\n$psaux"
      echo "\n"
    else
      :
    fi
fi

#lookup process binary path and permissisons
procperm=`ps aux | awk '{print $11}'|xargs -r ls -la 2>/dev/null |awk '!x[$0]++'`
if [ "$outfile" ]; then
if [ "$procperm" ]; then
echo "Process binaries & associated permissions (from above list):\n$procperm" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$procperm" ]; then
echo "${cafe} mProcess binaries & associated permissions (from above list):${white}\n$procperm"
      echo "\n"
    else
      :
    fi
fi

inetdread=`cat /etc/inetd.conf 2>/dev/null`
if [ "$outfile" ]; then
if [ "$inetdread" ]; then
echo "Contents of /etc/inetd.conf:\n$inetdread" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$inetdread" ]; then
echo "${cafe} mContents of /etc/inetd.conf:${white}\n$inetdread"
      echo "\n"
    else
      :
    fi
fi

#very 'rough' command to extract associated binaries from inetd.conf & show permisisons of each
inetdbinperms=`cat /etc/inetd.conf 2>/dev/null | awk '{print $7}' |xargs -r ls -la 2>/dev/null`
if [ "$outfile" ]; then
if [ "$inetdbinperms" ]; then
echo "The related inetd binary permissions:\n$inetdbinperms" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$inetdbinperms" ]; then
echo "${cafe} mThe related inetd binary permissions:${white}\n$inetdbinperms"
      echo "\n"
    else
      :
    fi
fi

xinetdread=`cat /etc/xinetd.conf 2>/dev/null`
if [ "$outfile" ]; then
if [ "$xinetdread" ]; then
echo "Contents of /etc/xinetd.conf:\n$xinetdread" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$xinetdread" ]; then
echo "${cafe} mContents of /etc/xinetd.conf:${white}\n$xinetdread"
      echo "\n"
    else
      :
    fi
fi

xinetdincd=`cat /etc/xinetd.conf 2>/dev/null |grep "/etc/xinetd.d" 2>/dev/null`
if [ "$outfile" ]; then
if [ "$xinetdincd" ]; then
echo "/etc/xinetd.d is included in /etc/xinetd.conf - associated binary permissions are listed below:"; ls -la /etc/xinetd.d 2>/dev/null >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$xinetdincd" ]; then
echo "${cafe} m/etc/xinetd.d is included in /etc/xinetd.conf - associated binary permissions are listed below:${red}"; ls -la /etc/xinetd.d 2>/dev/null
      echo "\n"
    else
      :
    fi
fi

#very 'rough' command to extract associated binaries from xinetd.conf & show permisisons of each
xinetdbinperms=`cat /etc/xinetd.conf 2>/dev/null | awk '{print $7}' |xargs -r ls -la 2>/dev/null`
if [ "$outfile" ]; then
if [ "$xinetdbinperms" ]; then
echo "The related xinetd binary permissions:$xinetdbinperms"; >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$xinetdbinperms" ]; then
echo "${cafe} mThe related xinetd binary permissions:${white}\n$xinetdbinperms";
      echo "\n"
    else
      :
    fi
fi

initdread=`ls -la /etc/init.d 2>/dev/null`
if [ "$outfile" ]; then
if [ "$initdread" ]; then
echo "/etc/init.d/ binary permissions:\n$initdread" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$initdread" ]; then
echo "${cafe} m/etc/init.d/ binary permissions:${white}\n$initdread"
      echo "\n"
    else
      :
    fi
fi

rcdread=`ls -la /etc/rc.d/init.d 2>/dev/null`
if [ "$outfile" ]; then
if [ "$rcdread" ]; then
echo "/etc/rc.d/init.d binary permissions:\n$rcdread" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$rcdread" ]; then
echo "${cafe} m/etc/rc.d/init.d binary permissions:${white}\n$rcdread"
      echo "\n"
    else
      :
    fi
fi

usrrcdread=`ls -la /usr/local/etc/rc.d 2>/dev/null`
if [ "$outfile" ]; then
if [ "$usrrcdread" ]; then
echo "/usr/local/etc/rc.d binary permissions:\n$usrrcdread" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$usrrcdread" ]; then
echo "${cafe} m/usr/local/etc/rc.d binary permissions:${white}\n$usrrcdread"
      echo "\n"
    else
      :
    fi
fi

if [ "$outfile" ]; then
echo "### SOFTWARE #############################################" >> $outfile
else
echo "${blue}### SOFTWARE #############################################${red}"
fi

sudover=`sudo -V | grep "Sudo version" 2>/dev/null`
if [ "$outfile" ]; then
if [ "$sudover" ]; then
echo "Sudo version:\n$sudover" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$sudover" ]; then
echo "${cafe} mSudo version:${white}\n$sudover"
      echo "\n"
    else
      :
    fi
fi

mysqlver=`mysql --version 2>/dev/null`
if [ "$outfile" ]; then
if [ "$mysqlver" ]; then
echo "MYSQL version:\n$mysqlver" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$mysqlver" ]; then
echo "${cafe} mMYSQL version:${white}\n$mysqlver"
      echo "\n"
    else
      :
    fi
fi

mysqlconnect=`mysqladmin -uroot -proot version 2>/dev/null`
if [ "$outfile" ]; then
if [ "$mysqlconnect" ]; then
echo "***We can connect to the local MYSQL service with default root/root credentials!\n$mysqlconnect" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$mysqlconnect" ]; then
echo "\e[00;33m***We can connect to the local MYSQL service with default root/root credentials!${white}\n$mysqlconnect"
      echo "\n"
    else
      :
    fi
fi

mysqlconnectnopass=`mysqladmin -uroot version 2>/dev/null`
if [ "$outfile" ]; then
if [ "$mysqlconnectnopass" ]; then
echo "***We can connect to the local MYSQL service as 'root' and without a password!\n$mysqlconnectnopass" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$mysqlconnectnopass" ]; then
echo "\e[00;33m***We can connect to the local MYSQL service as 'root' and without a password!${white}\n$mysqlconnectnopass"
      echo "\n"
    else
      :
    fi
fi

postgver=`psql -V 2>/dev/null`
if [ "$outfile" ]; then
if [ "$postgver" ]; then
echo "Postgres version:\n$postgver" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$postgver" ]; then
echo "${cafe} mPostgres version:${white}\n$postgver"
      echo "\n"
    else
      :
    fi
fi

postcon1=`psql -U postgres template0 -c 'select version()' 2>/dev/null | grep version`
if [ "$outfile" ]; then
if [ "$postcon1" ]; then
echo "***We can connect to Postgres DB 'template0' as user 'postgres' with no password!\n$postcon1" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$postcon1" ]; then
echo "\e[00;33m***We can connect to Postgres DB 'template0' as user 'postgres' with no password!:${white}\n$postcon1"
      echo "\n"
    else
      :
    fi
fi

postcon11=`psql -U postgres template1 -c 'select version()' 2>/dev/null | grep version`
if [ "$outfile" ]; then
if [ "$postcon11" ]; then
echo "***We can connect to Postgres DB 'template1' as user 'postgres' with no password!\n$postcon11" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$postcon11" ]; then
echo "\e[00;33m***We can connect to Postgres DB 'template1' as user 'postgres' with no password!:${white}\n$postcon11"
      echo "\n"
    else
      :
    fi
fi

postcon2=`psql -U pgsql template0 -c 'select version()' 2>/dev/null | grep version`
if [ "$outfile" ]; then
if [ "$postcon2" ]; then
echo "***We can connect to Postgres DB 'template0' as user 'psql' with no password!\n$postcon2" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$postcon2" ]; then
echo "\e[00;33m***We can connect to Postgres DB 'template0' as user 'psql' with no password!:${white}\n$postcon2"
      echo "\n"
    else
      :
    fi
fi

postcon22=`psql -U pgsql template1 -c 'select version()' 2>/dev/null | grep version`
if [ "$outfile" ]; then
if [ "$postcon22" ]; then
echo "***We can connect to Postgres DB 'template1' as user 'psql' with no password!\n$postcon22" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$postcon22" ]; then
echo "\e[00;33m***We can connect to Postgres DB 'template1' as user 'psql' with no password!:${white}\n$postcon22"
      echo "\n"
    else
      :
    fi
fi

apachever=`apache2 -v 2>/dev/null; httpd -v 2>/dev/null`
if [ "$outfile" ]; then
if [ "$apachever" ]; then
echo "Apache version:\n$apachever" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$apachever" ]; then
echo "${cafe} mApache version:${white}\n$apachever"
      echo "\n"
    else
      :
    fi
fi

apacheusr=`cat /etc/apache2/envvars 2>/dev/null |grep -i 'user\|group' |awk '{sub(/.*\export /,"")}1'`
if [ "$outfile" ]; then
if [ "$apacheusr" ]; then
echo "Apache user configuration:\n$apacheusr" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$apacheusr" ]; then
echo "${cafe} mApache user configuration:${white}\n$apacheusr"
      echo "\n"
    else
      :
    fi
fi

if [ "$outfile" ]; then
echo "### INTERESTING FILES ####################################" >> $outfile
    echo "Useful file locations:" >> $outfile;which nc 2>/dev/null >> $outfile; which netcat 2>/dev/null >> $outfile; which wget 2>/dev/null >> $outfile; which nmap 2>/dev/null >> $outfile; which gcc 2>/dev/null >> $outfile
    echo "\n" >> $outfile
    echo "Can we read/write sensitive files:" >> $outfile;ls -la /etc/passwd 2>/dev/null >> $outfile; ls -la /etc/group 2>/dev/null >> $outfile; ls -la /etc/profile 2>/dev/null >> $outfile; ls -la /etc/shadow 2>/dev/null >> $outfile; ls -la /etc/master.passwd 2>/dev/null >> $outfile
    echo "\n" >> $outfile
else
echo "${blue}### INTERESTING FILES ####################################${red}"
    echo "${cafe} mUseful file locations:${red}" ;which nc 2>/dev/null; which netcat 2>/dev/null; which wget 2>/dev/null; which nmap 2>/dev/null; which gcc 2>/dev/null
    echo "\n"
    echo "${cafe} mCan we read/write sensitive files:${red}" ;ls -la /etc/passwd 2>/dev/null; ls -la /etc/group 2>/dev/null; ls -la /etc/profile 2>/dev/null; ls -la /etc/shadow 2>/dev/null; ls -la /etc/master.passwd 2>/dev/null
    echo "\n"
fi

findsuid=`find / -perm -4000 -type f 2>/dev/null`
if [ "$outfile" ]; then
if [ "$findsuid" ]; then
echo "SUID files:\n$findsuid" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$findsuid" ]; then
echo "${cafe} mSUID files:${white}\n$findsuid"
      echo "\n"
    else
      :
    fi
fi

#list of 'interesting' suid files - feel free to make additions
intsuid=`find / -perm -4000 -type f 2>/dev/null | grep -w 'nmap\|perl\|'awk'\|'find'\|'bash'\|'sh'\|'man'\|'more'\|'less'\|'vi'\|'vim'\|'nc'\|'netcat'\|python\|ruby\|lua\|irb\|pl' | xargs -r ls -la`
if [ "$outfile" ]; then
if [ "$intsuid" ]; then
echo "***Possibly interesting SUID files:\n$intsuid" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$intsuid" ]; then
echo "\e[00;33m***Possibly interesting SUID files:${white}\n$intsuid"
      echo "\n"
    else
      :
    fi
fi

wwsuid=`find / -perm -4007 -type f 2>/dev/null`
if [ "$outfile" ]; then
if [ "$wwsuid" ]; then
echo "World-writable SUID files:\n$wwsuid" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$wwsuid" ]; then
echo "${cafe} mWorld-writable SUID files:${white}\n$wwsuid"
      echo "\n"
    else
      :
    fi
fi

wwsuidrt=`find / -uid 0 -perm -4007 -type f 2>/dev/null`
if [ "$outfile" ]; then
if [ "$wwsuidrt" ]; then
echo "World-writable SUID files owned by root:\n$wwsuidrt" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$wwsuidrt" ]; then
echo "${cafe} mWorld-writable SUID files owned by root:${white}\n$wwsuidrt"
      echo "\n"
    else
      :
    fi
fi

findguid=`find / -perm -2000 -type f 2>/dev/null`
if [ "$outfile" ]; then
if [ "$findguid" ]; then
echo "GUID files:\n$findguid" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$findguid" ]; then
echo "${cafe} mGUID files:${white}\n$findguid"
      echo "\n"
    else
      :
    fi
fi

#list of 'interesting' guid files - feel free to make additions
intguid=`find / -perm -2000 -type f 2>/dev/null | grep -w 'nmap\|perl\|'awk'\|'find'\|'bash'\|'sh'\|'man'\|'more'\|'less'\|'vi'\|'vim'\|'nc'\|'netcat'\|python\|ruby\|lua\|irb\|pl' | xargs -r ls -la`
if [ "$outfile" ]; then
if [ "$intguid" ]; then
echo "***Possibly interesting GUID files:\n$intguid" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$intguid" ]; then
echo "\e[00;33m***Possibly interesting GUID files:${white}\n$intguid"
      echo "\n"
    else
      :
    fi
fi

wwguid=`find / -perm -2007 -type f 2>/dev/null`
if [ "$outfile" ]; then
if [ "$wwguid" ]; then
echo "World-writable GUID files:\n$wwguid" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$wwguid" ]; then
echo "${cafe} mWorld-writable GUID files:${white}\n$wwguid"
      echo "\n"
    else
      :
    fi
fi

wwguidrt=`find / -uid 0 -perm -2007 -type f 2>/dev/null`
if [ "$outfile" ]; then
if [ "$wwguidrt" ]; then
echo "World-writable GUID files owned by root:\n$wwguidrt" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$wwguidrt" ]; then
echo "${cafe} mAWorld-writable GUID files owned by root:${white}\n$wwguidrt"
      echo "\n"
    else
      :
    fi
fi

#list all world-writable files excluding /proc
wwfiles=`find / ! -path "*/proc/*" -perm -2 -type f -print 2>/dev/null`
if [ "$outfile" ]; then
if [ "$wwfiles" ]; then
echo "World-writable files (excluding /proc):\n$wwfiles" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$wwfiles" ]; then
echo "${cafe} mWorld-writable files (excluding /proc):${white}\n$wwfiles"
      echo "\n"
    else
      :
    fi
fi

usrplan=`find /home -iname *.plan -exec ls -la {} \; -exec cat {} 2>/dev/null \;`
if [ "$outfile" ]; then
if [ "$usrplan" ]; then
echo "Plan file permissions and contents:\n$usrplan" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$usrplan" ]; then
echo "${cafe} mPlan file permissions and contents:${white}\n$usrplan"
      echo "\n"
    else
      :
    fi
fi

bsdusrplan=`find /usr/home -iname *.plan -exec ls -la {} \; -exec cat {} 2>/dev/null \;`
if [ "$outfile" ]; then
if [ "$bsdusrplan" ]; then
echo "Plan file permissions and contents:\n$bsdusrplan" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$bsdusrplan" ]; then
echo "${cafe} mPlan file permissions and contents:${white}\n$bsdusrplan"
      echo "\n"
    else
      :
    fi
fi
rhostsusr=`find /home -iname *.rhosts -exec ls -la {} 2>/dev/null \; -exec cat {} 2>/dev/null \;`
if [ "$outfile" ]; then
if [ "$rhostsusr" ]; then
echo "rhost config file(s) and file contents:\n$rhostsusr" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$rhostsusr" ]; then
echo "${cafe} mrhost config file(s) and file contents:${white}\n$rhostsusr"
      echo "\n"
    else
      :
    fi
fi

bsdrhostsusr=`find /usr/home -iname *.rhosts -exec ls -la {} 2>/dev/null \; -exec cat {} 2>/dev/null \;`
if [ "$outfile" ]; then
if [ "$bsdrhostsusr" ]; then
echo "rhost config file(s) and file contents:\n$bsdrhostsusr" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$bsdrhostsusr" ]; then
echo "${cafe} mrhost config file(s) and file contents:${white}\n$bsdrhostsusr"
      echo "\n"
    else
      :
    fi
fi

rhostssys=`find /etc -iname hosts.equiv -exec ls -la {} 2>/dev/null \; -exec cat {} 2>/dev/null \;`
if [ "$outfile" ]; then
if [ "$rhostssys" ]; then
echo "Hosts.equiv file details and file contents:\n$rhostssys" >> $outfile
      echo "\n" >> $outfile
      else
      :
    fi
else
if [ "$rhostssys" ]; then
echo "${cafe} mHosts.equiv file details and file contents: ${white}\n$rhostssys"
      echo "\n"
      else
      :
    fi
fi

nfsexports=`ls -la /etc/exports 2>/dev/null; cat /etc/exports 2>/dev/null`
if [ "$outfile" ]; then
if [ "$nfsexports" ]; then
echo "NFS config details:\n$nfsexports" >> $outfile
      echo "\n" >> $outfile
      else
      :
    fi
else
if [ "$nfsexports" ]; then
echo "${cafe} mNFS config details: ${white}\n$nfsexports"
      echo "\n"
      else
      :
    fi
fi

fstab=`cat /etc/fstab 2>/dev/null |grep username |awk '{sub(/.*\username=/,"");sub(/\,.*/,"")}1'| xargs -r echo username:; cat /etc/fstab 2>/dev/null |grep password |awk '{sub(/.*\password=/,"");sub(/\,.*/,"")}1'| xargs -r echo password:; cat /etc/fstab 2>/dev/null |grep domain |awk '{sub(/.*\domain=/,"");sub(/\,.*/,"")}1'| xargs -r echo domain:`
if [ "$outfile" ]; then
if [ "$fstab" ]; then
echo "***Looks like there are credentials in /etc/fstab!\n$fstab" >> $outfile
      echo "\n" >> $outfile
      else
      :
    fi
else
if [ "$fstab" ]; then
echo "\e[00;33m***Looks like there are credentials in /etc/fstab!${white}\n$fstab"
      echo "\n"
      else
      :
    fi
fi

fstabcred=`cat /etc/fstab 2>/dev/null |grep cred |awk '{sub(/.*\credentials=/,"");sub(/\,.*/,"")}1'| xargs -I{} sh -c 'ls -la {}; cat {}'`
if [ "$outfile" ]; then
if [ "$fstabcred" ]; then
echo "***/etc/fstab contains a credentials file!\n$fstabcred" >> $outfile
        echo "\n" >> $outfile
        else
        :
    fi
else
if [ "$fstabcred" ]; then
echo "\e[00;33m***/etc/fstab contains a credentials file!${white}\n$fstabcred"
        echo "\n"
        else
        :
    fi
fi

#Search function for optimising searches and to support multiple keywords
function searches(){
    #keyword that will be searched
    searchme=$1
    #file type that will be searched (*.conf, *.log, etc.)
    searchfile=$2
    #depth for search
    depth=$3
    if [ "$outfile" ]; then
if [ "$searchme" = "" ]; then
echo "Can't search $searchfile files as no keyword was entered\n" >> $outfile
        else
searchkey=`find / -maxdepth $depth -name $searchfile -type f -exec grep -Hn $searchme {} \; 2>/dev/null`
            if [ "$searchkey" ]; then
echo "Search keyword(s) ($searchme) (recursive $depth levels - output format filepath:identified line number where keyword appears):\n$searchkey" >> $outfile
                echo "\n" >> $outfile
            else
echo "Search keyword(s) ($keyword) (recursive 4 levels):" >> $outfile
                echo "'$searchme' not found in any $searchfile files" >> $outfile
                echo "\n" >> $outfile
            fi
fi
else
if [ "$searchme" = "" ]; then
echo "Can't search $searchfile files as no keyword was entered\n"
        else
searchkey=`find / -maxdepth $depth -name $searchfile -type f -exec grep -Hn $searchme {} \; 2>/dev/null`
            if [ "$searchkey" ]; then
echo "\e[00;32mSearch keyword(s) ($searchme) (recursive $depth levels - output format filepath:identified line number where keyword appears):${white}\n$searchkey"
                echo "\n"
            else
echo "${cafe} mSearch keyword(s) ($keyword) (recursive 4 levels):${red}"
                echo "'$searchme' not found in any $searchfile files"
                echo "\n"
            fi
fi
fi
}

IFS=' ' read -a all_keywords <<< "${keyword}"


#use supplied keyword/s and selected file types for potentional matches - output will show line number within relevant file path where a match has been located
for words in "${all_keywords[@]}"
do
    #call search function with arguments keyword, file extension (*.extension) and depth
    searches "$words" *.conf 4
    searches "$words" *.log 2
    searches "$words" *.ini 2
done

allconf=`find /etc/ -maxdepth 1 -name *.conf -type f -exec ls -la {} \; 2>/dev/null`
if [ "$outfile" ]; then
if [ "$allconf" ]; then
echo "All *.conf files in /etc (recursive 1 level):\n$allconf" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$allconf" ]; then
echo "${cafe} mAll *.conf files in /etc (recursive 1 level):${white}\n$allconf"
      echo "\n"
    else
      :
    fi
fi

usrhist=`ls -la ~/.*_history 2>/dev/null`
if [ "$outfile" ]; then
if [ "$usrhist" ]; then
echo "Current user's history files:\n$usrhist" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$usrhist" ]; then
echo "${cafe} mCurrent user's history files:${white}\n$usrhist"
      echo "\n"
    else
      :
    fi
fi

roothist=`ls -la /root/.*_history 2>/dev/null`
if [ "$outfile" ]; then
if [ "$roothist" ]; then
echo "***Root's history files are accessible!\n$roothist" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$roothist" ]; then
echo "\e[00;33m***Root's history files are accessible!${white}\n$roothist"
      echo "\n"
    else
      :
    fi
fi

readmail=`ls -la /var/mail 2>/dev/null`
if [ "$outfile" ]; then
if [ "$readmail" ]; then
echo "Any interesting mail in /var/mail:\n$readmail" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$readmail" ]; then
echo "${cafe} mAny interesting mail in /var/mail:${white}\n$readmail"
      echo "\n"
    else
      :
    fi
fi

readmailroot=`head /var/mail/root 2>/dev/null`
if [ "$outfile" ]; then
if [ "$readmailroot" ]; then
echo "***We can read /var/mail/root! (snippet below)\n$readmailroot" >> $outfile
      echo "\n" >> $outfile
    else
      :
    fi
else
if [ "$readmailroot" ]; then
echo "\e[00;33m***We can read /var/mail/root! (snippet below)${white}\n$readmailroot"
      echo "\n"
    else
      :
    fi
fi

if [ "$outfile" ]; then
echo "### SCAN COMPLETE ####################################" >> $outfile
else
echo "${green}### SCAN COMPLETE ####################################${red}"
fi
