#!/usr/bin/env bash

RED='\033[0;31m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
ORANGE='\033[0;33m'
NC='\033[0m' # No Color

echo -n -e "\nIf you know current user's password, type here: "
read passwd

echo -e "\n${ORANGE}[+]Checking your id...${NC}\n"
id

echo -e "\n${ORANGE}[+]Getting kernel info...${NC}\n"
uname -a

echo -e "\n${ORANGE}[+]Getting hostname info...${NC}\n"
hostnamectl

echo -e "\n${ORANGE}[+]Getting sudo version...${NC}\n"
sudo -V | grep "Sudo version" | cut -d " " -f 3

echo -e "\n${ORANGE}[+]Checking ip address...${NC}\n"
(ifconfig || ip a) 2>/dev/null

echo -e "\n${ORANGE}[+]Finding SUID files...${NC}\n"
find / -perm -u=s -type f 2>/dev/null

echo -e "\n${ORANGE}[+]Checking network services running on the machine...${NC}\n"
(netstat -punta || ss --ntpu) | grep "127.0"

echo -e "\n${ORANGE}[+]Listing users with console...${NC}\n"
cat /etc/passwd | grep "sh$"

echo -e "\n${ORANGE}[+]Cheching path variable...${NC}\n"
echo $PATH

echo -e "\n${ORANGE}[+]Checking history...${NC}\n"
cat ~/.bash_history

echo -e "\n${ORANGE}[+]Finding in-memory passwords...${NC}\n"
in_memory=$(strings /dev/mem -n10 2>/dev/null| grep -i PASS)
if [[ -z "$in_memory" ]]; then
    echo -e "${BLUE}I can't find it${NC}"
else
    echo -e "${RED}$in_memory"
fi

echo -e "\n${ORANGE}[+]Checking useful binaries...${NC}\n"
which nmap aws nc ncat netcat nc.traditional wget curl ping gcc g++ make gdb base64 socat python python2 python3 python2.7 python2.6 python3.6 python3.7 perl php ruby xterm doas sudo fetch docker lxc ctr runc rkt kubectl 2>/dev/null

echo -e "\n${ORANGE}[+]Finding hidden files in home directory...${NC}\n"
find / -type f -iname ".*" -ls 2>/dev/null | grep /home/

echo -e "\n${ORANGE}[+]Finding writable folder...${NC}\n"
find / -type d -writable 2>/dev/null

echo -e "\n${ORANGE}[+]Opening /etc/crontab...${NC}\n"
cat /etc/crontab

echo -e "\n${ORANGE}[+]Checking crontab...${NC}\n"
crontab=$(crontab -l)
echo "$crontab"
echo -e " [*]You may want to run pspy"
echo -e " ${PURPLE}https://github.com/DominicBreuker/pspy${NC}"

echo -e "\n${ORANGE}[+]Finding id_rsa...${NC}\n"
id_rsa=$(find / -name id_rsa 2> /dev/null)
if [[ -z "$id_rsa" ]]; then
    echo -e "${BLUE}I can't find any ssh private key${NC}"
else
    echo -e "${RED}$id_rsa${NC}"
fi

echo -e "\n${ORANGE}[+]Finding softwares in opt directory...${NC}\n"
ls -la /opt/

echo -e "\n${ORANGE}[+]Opening /etc/exports...${NC}\n"
cat /etc/exports

echo -e "\n${ORANGE}[+]Checking commands you can execute with sudo${NC}\n"
sudo_l=$(echo "$passwd" | sudo -l -S 2>/dev/null)
if [[ -z "$sudo_l" ]]; then
    echo -e "${BLUE}This user may not run any commands with sudo or you gave me a wrong passoword${NC}"
else
   echo -e "${RED}$sudo_l${NC}"
fi

echo -e "\n${ORANGE}[+]Checking if /etc/shadow is readable...${NC}\n"
ls -l /etc/shadow
if [[ -r /etc/shadow ]]; then
    echo -e "\n${RED}/etc/shadow is readable${NC}"
else
    echo -e "\n${BLUE}/etc/shadow is NOT readable${NC}"
fi

echo -e "\n${ORANGE}[+]Checking if /etc/passwd is writable...${NC}\n"
ls -l /etc/passwd
if [[ -w /etc/passwd ]]; then
    echo -e "\n${RED}/etc/passwd is writable${NC}"
else
    echo -e "\n${BLUE}/etc/passwd is NOT writable${NC}"
fi

echo -e "\n${ORANGE}[+]Checking if /etc/sudoers is writable...${NC}\n"
ls -l /etc/sudoers
if [[ -w /etc/sudoers ]]; then
    echo -e "\n${RED}/etc/sudoers is writable${NC}"
else
    echo -e "\n${BLUE}/etc/sudoers is NOT writable${NC}"
fi

echo -e "\n${ORANGE}[+]Finding files with bak extension in /var/backups directory${NC}\n"
bak=$(ls -la /var/backups | grep .bak)
if [[ -z "$bak" ]]; then
    echo -e "${BLUE}I can't find it.${NC}"
else
    echo -e "${RED}$bak"
fi

echo -e "\n${RED}[+]Scanning is done. Good Luck :)${NC}\n"
