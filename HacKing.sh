#!/usr/bin/env bash
###############################################
#     _   _            _  ___                 #
#    | | | | __ _  ___| |/ (_)_ __   __ _     #
#    | |_| |/ _' |/ __| ' /| | '_ \ / _' |    #
#    |  _  | (_| | (__| . \| | | | | (_| |    #
#    |_| |_|\__,_|\___|_|\_\_|_| |_|\__, |    #
#                                   |___/     #
###############################################
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
###############
#    Banner   #
###############
function Banner(){
echo ""
echo ""
echo -e "$red       ###############################################"
echo -e "       #     _   _            _  ___                 #"
echo "       #    | | | | __ _  ___| |/ (_)_ __   __ _     #"
echo "       #    | |_| |/ _' |/ __| ' /| | '_ \ / _' |    #"
echo "       #    |  _  | (_| | (__| . \| | | | | (_| |    #"
echo "       #    |_| |_|\__,_|\___|_|\_\_|_| |_|\__, |    #"
echo "       #                                   |___/     #"
echo -e "$red       ###############################################"
echo -e "  $red[$green+$red]$cyan Github: https://www.github.com/Anlominus/HacKing $red[$green+$red]"

}

##################
#    ManBanner   #
##################
function ManBanner(){
echo -e "$purple
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
echo -e "  $red[$green+$red]$cyan Github: https://www.github.com/Anlominus/HacKing $red[$green+$red]"
}

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

#################
#    VNumbers   #
#################
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
c0="$red[$green$n0$red]$white"
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

################
#    VMenu     #
################
m1="$c1$cyan AnonSurf:$cafe Anonymity surfing "
m2="$c2$cyan WebHack:$cafe Web Analysis "
m3="$c3$cyan VulnHack:$cafe Vulnerability Analysis "
m4="$c4$cyan WireLess:$cafe Wireless Analysis "
m5="$c5$cyan InfoGath:$cafe Information Gathering "
m6="$c6$cyan Forensics:$cafe Forensics Analysis "
m7="$c7$cyan FramXploit:$cafe Exploit Frameworks "
m8="$c8$cyan RAT:$cafe RemoteAccess "
m9="$c9$cyan HasHack:$cafe Hashing & Enctyprt Decrypt "
m10="$c10$cyan PayLoads:$cafe Payloads and more "
m11="$c11$cyan XInstKits:$cafe Installer Kits "
m00="$c0 "
##################
#    VMenu_1     #
##################
#  [1] AnonSurf: Anonymity surfing
m1_1="$c1 AnonSurf "
m1_0="$c0 Exit "
##################
#    VMenu_2     #
##################
#  [2] WebHack: Web Analysis
m2_1="$c1 BlackWidow "
m2_2="$c2 Blazy "
m2_3="$c3 Breacher "
m2_4="$c4 checkURL "
m2_5="$c3 Cracker-Tool "
m2_6="$c4 curl "
m2_7="$c3 dirb-kali "
m2_8="$c4 dirsearch "
m2_9="$c3 dotdotpwn "
m2_10="$c4 ffuf "
m2_11="$c3 HawkScan "
m2_12="$c4 insta-hack "
m2_13="$c3 nikto "
m2_14="$c4 Sublist3r "
m2_15="$c3 takeover "
m2_16="$c4 WebHackersWeapon "
m2_17="$c3 webkiller "
m2_18="$c4 XSS "
m2_0="$c0 Exit "
##################
#    VMenu_3     #
##################
#  [3] VulnHack: Vulnerability Analysis
m3_1="$c1 ChangeMe "
m3_2="$c2 ChangeMe "
m3_3="$c3 ChangeMe "
m3_0="$c0 Exit "
##################
#    VMenu_4     #
##################
#  [4] WireLess: Wireless Analysis
m4_1="$c1 HacKing "
m4_2="$c2 Lazymux "
m4_3="$c3 Tool-X "
m4_0="$c0 Exit "
##################
#    VMenu_5     #
##################
#  [5] InfoGath: Information Gathering
m5_1="$c1 HacKing "
m5_2="$c2 Lazymux "
m5_3="$c3 Tool-X "
m5_4="$c4 DarkArmy "
m5_5="$c5 Fsociety "
m5_0="$c0 Exit "
##################
#    VMenu_6     #
##################
#  [6] Forensics: Forensics Analysis
m6_1="$c1 Anonymity "
m6_2="$c2 Lazymux "
m6_3="$c3 Tool-X "
m6_0="$c0 Exit "
##################
#    VMenu_7     #
##################
#  [7] FramXploit: Exploit Frameworks
m7_1="$c1 Devices Information "
m7_2="$c2 Th3inspector "
m7_3="$c3 Mercury "
m7_4="$c4 000000 "
m7_0="$c0 Exit "
##################
#    VMenu_8     #
##################
#  [8] RAT: RemoteAccess
m8_1="$c1 Ciphey "
m8_2="$c2 haiti "
m8_3="$c3 Hash-Buster "
m8_0="$c0 Exit "
##################
#    VMenu_9     #
##################
#  [9] HasHack: Hashing & Enctyprt Decrypt
m9_1="$c1 Ciphey "
m9_2="$c2 haiti "
m9_3="$c3 Hash-Buster "
m9_4="$c4 hashids "
m9_5="$c5 imagehash "
m9_6="$c6 Name-That-Hash "
m9_7="$c7 Search-That-Hash "
m9_8="$c8 onemore "
m9_9="$c9 onemore "
m9_0="$c0 Exit "
###################
#    VMenu_10     #
###################
#  [10] PayLoads: Payloads and more
m10_1="$c1 HacKing "
m10_2="$c2 Lazymux "
m10_3="$c3 Tool-X "
m10_4="$c4 DarkArmy "
m10_5="$c5 Fsociety "
m10_0="$c0 Exit "
###################
#    VMenu_11     #
###################
#  [11] XInstKits: Installer Kits
m11_1="$c1 HacKing "
m11_2="$c2 Lazymux "
m11_3="$c3 Tool-X $snc"
m11_4="$c4 DarkArmy "
m11_5="$c5 Fsociety "
m11_0="$c0 Exit "
###################
#    VMenu_12     #
###################
m12_1="$c1 Anonymity "
m12_2="$c2 Lazymux "
m12_3="$c3 Tool-X "
m12_0="$c0 Exit "
###################
#    VMenu_13     #
###################
m13_1="$c1 Devices Information "
m13_2="$c2 Th3inspector "
m13_3="$c3 Mercury "
m13_4="$c4 000000 "
m13_0="$c0 Exit "
###################
#    VMenu_14     #
###################
m14_1="$c1 HacKing "
m14_2="$c2 Lazymux "
m14_3="$c3 Tool-X "
m14_0="$c0 Exit "
###################
#    VMenu_15     #
###################
m15_1="$c1 HacKing "
m15_2="$c2 Lazymux "
m15_3="$c3 Tool-X "
m15_0="$c0 Exit "
###################
#    VMenu_16     #
###################
m16_1="$c1 HacKing "
m16_2="$c2 Lazymux "
m16_3="$c3 Tool-X "
m16_4="$c4 DarkArmy "
m16_5="$c5 Fsociety "
m16_0="$c0 Exit "

###################

################
#    FMenu     #
################
function Menu() {
	echo -e "\n
        $red[$green#############$red]$white
        $red[$green#$cyan Main Menu $green#$red]$white
        $red[$green#############$red]$white \n
        $m1
        $m2
        $m3
        $m4
        $m5
        $m6
        $m7
        $m8
        $m9
        $m10
        $m11
        $m12
        $m13
        $m14
\n    $m00
"
  while :
  do
    echo  "╭─Anlominus"
    read -p "╰──► Option:" INPUT_STRING;
    case $INPUT_STRING in
  	menu)
      Banner
      Menu
  		;;
  	1)
    echo "$(clear)"
    echo -e "$m1"
    Menu_1
    ;;
  	2)
    echo "$(clear)"
    echo -e "$m2"
    Menu_2
  		;;
  	3)
    echo "$(clear)"
    echo -e "$m3"
    Menu_3
  		;;
  	4)
    echo "$(clear)"
    echo -e "$m4"
    Menu_4
  		;;
  	5)
    echo "$(clear)"
    echo -e "$m5"
    Menu_5
  		;;
  	6)
    echo "$(clear)"
    echo -e "$m6"
    Menu_6
    ;;
  	7)
    echo "$(clear)"
    echo -e "$m7"
    Menu_7
  		;;
  	8)
    echo "$(clear)"
    echo -e "$m8"
    Menu_8
  		;;
  	9)
    echo "$(clear)"
    echo -e "$m9"
    Menu_9
  		;;
  	10)
    echo "$(clear)"
    echo -e "$m10"
    Menu_10
  		;;
  	11)
    echo "$(clear)"
    echo -e "$m11"
    Menu_11
  		;;
  	12)
    echo "$(clear)"
    echo -e "$m12"
    Menu_12
  		;;
  	13)
    echo "$(clear)"
    echo -e "$m13"
    Menu_13
  		;;
  	14)
    echo "$(clear)"
    echo -e "$m14"
    Menu_14
  		;;
  	b1)
    echo "$(clear)"
    echo -e "$mb"
  	Banner
    ;;
  	b2)
    echo "$(clear)"
    echo -e "$mb"
  	ManBanner
    ;;
  	00)
    echo "$(clear)"
  	exit
    ;;
###############
#    Misc     #
###############
    hello)
    	echo -e "Hello $USER !"
    	;;
    clear)
    	echo "$(clear)"
      Menu
    	;;
    user)
    	echo -e " $USER !"
    	;;
    banner)
    	Banner
      ManBanner
    	;;
  	bye)
  		echo -e "See you again!"
      exit
  		;;
  	exit)
  		echo -e "See you again!"
  		exit
  		;;
  	*)
    	echo -e "$red Sorry, I dont understand."
      echo "$(clear)"
      Banner
      Menu
  		;;
    esac
  done

}

################
#    FMenu_1   #
################
function Menu_1() {
	echo -e "\n
        $red[$green#############$red]$white
        $red[$green#$cyan Anonymity $green#$red]$white
        $red[$green#############$red]$white \n
\n      $m00
"
  while :
  do
    echo  "╭─Anlominus"
    read -p "╰──► Option:" INPUT_STRING;
    case $INPUT_STRING in
  	menu)
      Banner
      Menu_1
  		;;
  	1)
    echo "$(clear)"
    echo -e "$m1_1"
    ;;
  	2)
    echo "$(clear)"
    echo -e "$m2"
  		;;
  	3)
    echo "$(clear)"
    echo -e "$m3"
  		;;
  	4)
    echo "$(clear)"
    echo -e "$m4"
  		;;
  	5)
    echo "$(clear)"
    echo -e "$m5"
    Menu_5
  		;;
  	6)
    echo "$(clear)"
    echo -e "$m5"
  		;;


###############
#    Misc     #
###############
    clear)
    	echo "$(clear)"
      Menu
    	;;
    banner)
    	Banner
      ManBanner
    	;;
  	exit)
  		echo -e "See you again!"
  		exit
  		;;
    00)
      echo "$(clear)"
    	Menu
      ;;
  	*)
    	echo -e "$red Sorry, I dont understand."
      echo "$(clear)"
      Menu_1
  		;;
    esac
  done

}

##################
#    FMenu_2     #
##################
function Menu_2(){
  Banner
  echo -e "\n
  $red[$green#########################$red]$white
  $red[$green#$cyan Information Gathering $green#$red]$white
  $red[$green#########################$red]$white \n
        $m2_1
        $m2_2
        $m2_3
\n      $m2_0\n"


  while :
  do
      echo  "╭─Anlominus"
      read -p "╰──► Option:" INPUT_STRING;
    case $INPUT_STRING in
    menu)
      ;;
  	1)
    echo "$(clear)"
    echo -e "$m2_1"
    ;;
    2)
      echo "$(clear)"
      # chmod +x InfoGath/Th3inspector/install.sh && ./InfoGath/Th3inspector/install.sh
      perl ./InfoGath/Th3inspector/Th3inspector.pl
    ;;
    3)
      echo "$(clear)"
      python3.7 ./InfoGath/Mercury/Mercury.py
    ;;
    00)
      echo "$(clear)"
    	Menu
      ;;
    *)
      echo -e "$red Sorry, I dont understand."
      echo "$(clear)"
      Menu_2
    ;;
    esac
  done

}

##################
#    FMenu_3     #
##################
function Menu_3(){
  Banner
  echo -e "\n
  $red[$green#################$red]$white
  $red[$green#$cyan InstKits Menu $green#$red]$white
  $red[$green#################$red]$white \n
        $m5_1
        $m5_2
        $m5_3
\n      $m5_0\n"


  while :
  do
      echo  "╭─Anlominus"
      read -p "╰──► Option:" INPUT_STRING;
    case $INPUT_STRING in
    menu)
      ;;
    1)
      echo "$(clear)"
      bash HacKing.sh
    ;;
    2)
      echo "$(clear)"
      python InstKits/Lazymux/lazymux.py
    ;;
    3)
      echo "$(clear)"
      python3.7 InstKits/Tool-X/Tool-X.py
    ;;
    00)
      echo "$(clear)"
    	Menu
      ;;
    *)
      echo -e "$red Sorry, I dont understand."
      echo "$(clear)"
      Menu_3
    ;;
    esac
  done

}

##################
#    FMenu_4     #
##################
function Menu_4(){
  Banner
  echo -e "\n
  $red[$green#################$red]$white
  $red[$green#$cyan InstKits Menu $green#$red]$white
  $red[$green#################$red]$white \n
        $m5_1
        $m5_2
        $m5_3
\n      $m5_0\n"

  while :
  do
      echo  "╭─Anlominus"
      read -p "╰──► Option:" INPUT_STRING;
    case $INPUT_STRING in
    menu)
      ;;
    1)
      echo "$(clear)"
      bash HacKing.sh
    ;;
    2)
      echo "$(clear)"
      python InstKits/Lazymux/lazymux.py
    ;;
    3)
      echo "$(clear)"
      python3.7 InstKits/Tool-X/Tool-X.py
    ;;
    00)
      echo "$(clear)"
    	Menu
      ;;
    *)
      echo -e "$red Sorry, I dont understand."
      echo "$(clear)"
      Menu_4
    ;;
    esac
  done

}
##################
#    FMenu_5     #
##################
function Menu_5(){
  Banner
  echo -e "\n
  $red[$green##################$red]$white
  $red[$green#$cyan Installer Kits $green#$red]$white
  $red[$green##################$red]$white \n
        $m5_1
        $m5_2
        $m5_3
        $m5_4
        $m5_5
\n      $m5_0\n"

  while :
  do
      echo  "╭─Anlominus"
      read -p "╰──► Option:" INPUT_STRING;
    case $INPUT_STRING in
    menu)
      ;;
    1)
      echo "$(clear)"
      bash HacKing.sh
    ;;
    2)
      echo "$(clear)"
      python3.7 InstKits/Lazymux/lazymux.py
    ;;
    3)
      echo "$(clear)"
      python3.7 InstKits/Tool-X/Tool-X.py
    ;;
    4)
      echo "$(clear)"
      python ./DarkArmy/darkarmy.py
    ;;
    5)
      echo "$(clear)"
      python ./InstKits/FsocIety/fsociety.py
    ;;
    00)
      echo "$(clear)"
    	Menu
      ;;
    *)
      echo -e "$red Sorry, I dont understand."
      echo "$(clear)"
      Menu_5
    ;;
    esac
  done

}

Menu
