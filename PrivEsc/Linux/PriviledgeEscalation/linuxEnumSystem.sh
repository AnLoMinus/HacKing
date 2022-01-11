#!/usr/bin/env bash

##LINUX ENUM SYSTEM##
echo ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
echo ^^^^^^^^^^^^^^^_LINUX ENUM SYSTEM_^^^^^^^^^^^^^^^
echo ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
echo ""
echo ".:: SYSTEM INFO ::."
uname -a
cat /etc/issue

echo ""
echo ".:: NETWORK INFO ::."
route
netstat -nlpt

echo ""
echo ".:: PRIVILEGE ESCALATION POSSIBILITIES ::."
echo ""
echo "--> SUID PRIVILEGE ESCALATION"
echo ""
find / -perm -u=s -type f 2>/dev/null
echo ""
echo "--> SGID PRIVILEGE ESCALATION"
echo ""
find / -perm -2000 -type f 2>/dev/null
echo ""
echo "--> STICKY BITS PRIVILEGE ESCALATION"
echo ""
find / -perm -1000 -type f 2>/dev/null
echo ""
echo "--> CAPABILITIES PRIVILEGE ESCALATION"
echo ""
getcap -r / 2>/dev/null
echo ""
echo "--> CRONTAB PRIVILEGE ESCALATION"
echo ""
ls -la /etc/crontab
cat /etc/crontab
ls -la /etc/cron.*
