# Notes


  - [ ] 00 - Anonymity
  - [ ] 01 - Information Gathering
  - [ ] 02 - Vulnerability Assessment
  - [ ] 03 - Web Application HacKing
  - [ ] 04 - Database Assessment
  - [ ] 05 - Password HacKing
  - [ ] 06 - Wireless HacKing
    - [ ] [Wireless Penetration Testing: Aircrack-ng](https://www.hackingarticles.in/wireless-penetration-testing-aircrack-ng/)
    - [ ] [Wireless Penetration Testing Cheat Sheet](https://gist.github.com/dogrocker/86881d2403fee138487054da82d5dc2e)
    - [ ] [Wireless Penetration Testing Cheat Sheet by kennedykan](https://cheatography.com/kennedykan/cheat-sheets/wireless-penetration-testing/)
    - [ ] [Pentesting Wifi](https://book.hacktricks.xyz/generic-methodologies-and-resources/pentesting-wifi)
    - [ ] 
  - [ ] 07 - Reverse Engineering
  - [ ] 08 - Exploit Frameworks & DataBases
  - [ ] 09 - Sniffing - Spoofing
  - [ ] 10 - Gaining & Maintaining Access
  - [ ] 11 - Digital Forensic
  - [ ] 12 - Analysis & Reporting
  - [ ] 13 - Social Engineering
  - [ ] 14 - Privilege Enumeration & Escalation
  - [ ] 15 - Malware Analysis Labs/Tools
  - [ ] 16 - Covering Tracks

---

- [ ] 06 - Wireless HacKing

### Monitor Mode Supported WiFi Chipset/Adapter List :

- Set Up Access Point
  - 1 `nano dnsmasq.conf`
```SHELL
#Set the wireless interface
interface=wlan0

#Set the IP range for the clients
dhcp-range=192.168.1.2,192.168.1.250,12h

#Set the gateway IP address
dhcp-option=3,192.168.1.1

#Set DNS server address
dhcp-option=6,192.168.1.1

#Redirect all requests to 192.168.1.1
address=/#/192.168.1.1
```

  - 2 `nano hostapd.conf`
```SHELL
#Set wireless interface
interface=wlan0

#Set network name
ssid=Free-WiFi

#Set channel
channel=11

#Set driver
driver=nl80211
```
  - 3 `dnsmasq -C /directory_to_dnsmasq.conf`
  - 4 `hostapd /directory_to_hostapd.conf -B`

- Atheros Chipset List with monitor mode support
  - Atheros AR5000
  - Atheros AR5001A-AR5007EG
  - Atheros AR5000-AR5007EG
  - Atheros AR5005U (AR5523)
  - Atheros AR9001U (AR9170)
  - Atheros AR2427+AR5008+AR900x
  - Atheros AR9002U (AR9271, AR7010)

- Broadcom Chipset List with monitor mode support
  - Broadcom BCM4301, BCM4307, BCM4306r2
  - Broadcom BCM4306r3, BCM4311, BCM4312, BCM4309, BCM4318(E), BCM4321, BCM4322
  - Broadcom BCM43224, BCM43225, BCM4331
  - Broadcom BCM43224, BCM43225

- Intel Chipset List with monitor mode support
  - Intel PRO/Wireless 2100B
  - Intel PRO/Wireless 3945ABG
  - Intel Wireless WiFi Link 4965AGN
  - Intel WiFi Link 5100, 5150, 5300, 5350 - Centrino 100, 130, 1000, 1030, 6150, 6200, 6250, 6300

- Intersil Chipset List with monitor mode support
  - Intersil PRISM 2/2.5/3 PCI/CF/PCMCIA
  - Intersil PRISM 2.5/3 USB
  - Intersil ISL3877, ISL3880,ISL3890, ISL3886
  - Intersil ISL3880/ISL3886 + NET2280, ISL3887

- Ralink Chipset List with monitor mode support
  - Ralink RT2460
  - Ralink RT2560
  - Ralink RT2561, RT2561S, RT2661
  - Ralink RT2571, RT2572
  - Ralink RT2571W, RT2573, RT2671
  - Ralink RT2760, RT2790, RT2860, RT2880,
  - Ralink RT2890, RT3052, RT3090, RT3091, RT3092, RT3390,RT3060, RT3062, RT3562, RT3592, RT5390, RT3290
  - Ralink RT2760, RT2790, RT2860, RT2880, RT2890, RT3052, RT309x
  - Ralink RT2770, RT2870, RT2070, RT3070, RT3071, RT3072, RT3370, RT3572, RT5370, RT5572,RT8070

- Realtek Chipset List with monitor mode support
  - Realtek RTL8180L, RTL8185L, RTL8187SE (3.15+) 
  - Realtek RTL8187L, RTL8187B • Realtek RTL8188SU, RTL8191SU, RTL8192SU 
  - Realtek RTL8188CUS, RTL8192CU, RTL8188RU

- Texas Instruments Chipset List with monitor mode support
  - Texas Instruments ACX100 (TNETW1100), ACX101 (TNETW1100B), ACX111 (TNETW1130), TNETW1450
  - Texas Instruments WL1251

- ZyDAS Chipset List with monitor mode support
  - ZyDAS ZD1201
  - ZyDAS ZD1211/ZD1211B
