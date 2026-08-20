---
tags:
  - ctf
  - "#trim"
  - "#privilege_escalation"
  - "#enumeration"
created: 2026-08-20
---

# `Linux Privilege Escalation: Enumeration` 
> 

## 🔐 Connection data

| Parameter | Value                                  |
| --------- | -------------------------------------- |
| Host      | https://tryhackme.com/room/linprivenum |
| Port      | 22                                     |
| Login     | john                                   |
| Password  | john                                   |

## 🎯 Task of the level
- 
## 🎯 Information

| Type of information            | Data                                                                                                                                                                                                |
| ------------------------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| hostname                       | linux-enumeration                                                                                                                                                                                   |
| system information             | linux-enumeration 6.8.0-1017-awsq                                                                                                                                                                   |
| linux version                  | Ubuntu 13.2.0-23ubuntu4                                                                                                                                                                             |
| kernel build                   | buildd@lcy02-amd64-077                                                                                                                                                                              |
| OS information                 | Ubuntu 24.04.1 LTS \n \l                                                                                                                                                                            |
| possible vulnerability         | script with root privilege in crontab, every 5 min: /root/backup.sh                                                                                                                                 |
| apparmor version               | 4.0.1really4.0.1-0ubuntu0.24.04.3                                                                                                                                                                   |
| users info                     | user `matt` have admin privilege                                                                                                                                                                    |
| sudo commands without password | `/usr/bin/nmap`                                                                                                                                                                                     |
| passwd /home info              | `syslog:x:104:110::/home/syslog:/usr/sbin/nologin`<br>`ubuntu:x:1000:1000:Ubuntu:/home/ubuntu:/bin/bash`<br>`john:x:1001:1001:,,,:/home/john:/bin/bash`<br>`matt:x:1002:1002::/home/matt:/bin/bash` |
| Mailing List Manager username  | list                                                                                                                                                                                                |

## 🎯 Tools

| Tool | Destination | Usage |
| ---- | ----------- | ----- |
|      |             |       |
## 📚 Key commands/technics

| Coomand                            | Desctiption                                         |
| ---------------------------------- | --------------------------------------------------- |
| hostname                           | return hostname of machine                          |
| uname -a                           | print system information                            |
| cat /proc/version                  | information about kernel version                    |
| cat /etc/issue                     | information about OS                                |
| ps                                 | check running processes                             |
| cat /etc/crontab                   | check automatic running software                    |
| dpkg                               | check all installed software                        |
| id                                 | check users memberships to group and they privilege |
| env                                | show environmental variables                        |
| history                            | print previous used commands                        |
| sudo -l                            | print all commands we can run with sudo             |
| cat /etc/passwd                    | find users in system                                |
| cat /etc/passwd \| cut -d ":" -f 1 | list view of users in system                        |
| ifconfig                           | information about network interfaces                |
| netstat                            | gather information about connections                |
| ss -tulpen                         | get opened ports information                        |

## 💡 Step by step

| Step | Action                                                                                       | Information                                                                                                                                                                                                    | Reason                                                                                                  |
| ---- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| 1    | `hostname`, `uname -a`, `cat /proc/version`, `cat /etc/issue`, `cat /etc/crontab`, `dpkg -l` | `linux-enumeration`<br>kernel `6.8.0-1017-awsq`<br>build `lcy02-amd64-077`<br>linux version `Ubuntu 13.2.0-23ubuntu4`<br>possible vulnerability, root file in crontab: `/root/backup.sh`<br>installed apparmor | get information to check where we can start with privilege escalation or find something useful          |
| 2    | `id`, `history`, `env`, `cat /etc/passwd`, `sudo -l`                                         | matt have root privelege<br>flag in history: `THM{history-is-not-safe}`<br>`/usr/bin/nmap` can be used without password with root privilege by sudo<br>                                                        | find useful information about what user do before, find our target for escalation, find some useful env |
| 3    | `ifconfig`, `netstat`, `ss -tulpen`                                                          | open for listening port 53                                                                                                                                                                                     | discover network information                                                                            |
| 4    | `ls -la`, `find`                                                                             | flag in hidden .txt: <br>`THM{not-so-hidden}`<br>flag in file which have in name TryHackMe:<br>`THM{found-the-flag}`                                                                                           | tools for finding useful files                                                                          |

## 🔍 Result
Flag: THM{history-is-not-safe}
Flag1: THM{not-so-hidden}
Flag2: THM{found-the-flag}

## 🚪 Travel
-> [Level_N]

## 🔗 Link
- [Название ресурса](URL)