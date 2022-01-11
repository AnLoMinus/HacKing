#!/bin/bash

# Constant like text

figlet_banner="           _     _                  _                     
 ___ _   _(_) __| |      _ __  _ __(_)_   _____  ___  ___ 
/ __| | | | |/ _' |_____| '_ \| '__| \ \ / / _ \/ __|/ __|
\__ \ |_| | | (_| |_____| |_) | |  | |\ V /  __/\__ \ (__ 
|___/\__,_|_|\__,_|     | .__/|_|  |_| \_/ \___||___/\___|
                        |_|                               

Leverages system SUID binaries for root shell access! :D
"

help_text="
Commands:
-f: Finds all vulnerable binaries for SUID privilege escalation. Same as not passing any known command flag.
-h: Prints the message your seeing right now
-r: Reloads SUID binaries source cache
"

suid_binaries_source_cache_file_path=".suid_binaries_cache"

# Script input parameters

command_flag='-f'

# Script procedures

print_figlet_banner(){
    echo "$figlet_banner"
}

print_help_text(){
    echo "$help_text"
}

reload_suid_binaries_source_cache(){
    bins_html=$(curl -s https://gtfobins.github.io/#+suid)
    
    bins=$(echo "$bins_html" | awk 'sub(/\/#suid">SUID<\/a><\/li>/, "")' | awk 'sub(/.*<li><a href="\/gtfobins\//, "")')

    echo "$bins" > "$suid_binaries_source_cache_file_path"
}

find_vulnerable_binaries_for_privesc(){

    if [[ ! -f "$suid_binaries_source_cache_file_path" ]]; then
        echo "SUID binaries source cache not present, reloading..."
        
        reload_suid_binaries_source_cache
    fi

    find_privescable_binaries_command="find / -perm -4000 2>/dev/null"

    echo "Finding SUID binaries... ($find_privescable_binaries_command)"

    found_privescable_binaries=$(eval $find_privescable_binaries_command | awk 'sub(/.*\//, "")')

    match_binaries_names_command='comm -12 <(sort $suid_binaries_source_cache_file_path) <(echo "$found_privescable_binaries" | sort)'

    echo "Matching SUID binaries with local cache... ($suid_binaries_source_cache_file_path)"

    privescable_binaries=$(eval $match_binaries_names_command)

    echo

    if [[ $privescable_binaries == "" ]]; then
        echo "Didn't found any privescable binaries... :("
    else
        echo "The following binaries are vulnerable for SUID privilege escalation:"

        echo

        echo "$privescable_binaries" | while read bin; do
            echo "$bin (https://gtfobins.github.io/gtfobins/$bin/#suid)"
        done
    fi
}

# Requires script parameters ($@) to be passed as the function parameter
parse_parameters(){
    while [[ "$#" -gt 0 ]]; do
        case $1 in
            -f) command_flag="-f"; shift ;;
            -h) command_flag="-h"; shift ;;
            -r) command_flag="-r"; shift ;;
            *)  command_flag="-h"; shift ;;
        esac
        shift
    done
}

# Requires command flag (@command_flag) to be passed as the function parameter
on_command(){
    if [[ $1 == '-f' ]]; then
        find_vulnerable_binaries_for_privesc
        exit 1
    elif [[ $1 == '-h' ]]; then
        print_help_text
        exit 1
    elif [[ $1 == '-r' ]]; then
        reload_suid_binaries_source_cache
        exit 1
    fi
}

print_figlet_banner

parse_parameters $@

on_command $command_flag