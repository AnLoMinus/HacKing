# suid-privesc

Tool that finds and leverages existing root SUID binaries for a root shell. It uses [GTFOBins](https://gtfobins.github.io/#+suid) as the source-of-truth for root SUID binaries.

It is written in `Bash` and uses native GNU tools for fetching and processing data (`awk`, `cat`, `comm`, `curl`, `eval`, `find` and `sort`), so it should directly run on GNU/Linux and Unix systems.

Thanks [fssecur3](https://github.com/fssecur3) for introducing me to SUID privesc!

## Instructions

```
           _     _                  _                     
 ___ _   _(_) __| |      _ __  _ __(_)_   _____  ___  ___ 
/ __| | | | |/ _' |_____| '_ \| '__| \ \ / / _ \/ __|/ __|
\__ \ |_| | | (_| |_____| |_) | |  | |\ V /  __/\__ \ (__ 
|___/\__,_|_|\__,_|     | .__/|_|  |_| \_/ \___||___/\___|
                        |_|                               

Leverages system SUID binaries for root shell access! :D


Commands:
-f: Finds all vulnerable binaries for SUID privilege escalation. Same as not passing any known command flag.
-h: Prints the message your seeing right now
-r: Reloads SUID binaries source cache

```

## Example

The following shell command finds all vulnerable binaries for SUID privilege escalation on your system:

```
bash suid-privesc.bash
```

### Disclaimer

The present code is to be used only for learning, demonstration and ethic use purposes. You shall not use the tool in a malicious way!