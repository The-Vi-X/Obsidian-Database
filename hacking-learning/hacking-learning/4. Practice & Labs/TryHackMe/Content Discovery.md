---
tags:
  - ctf
  - "#thm"
  - "#OSINT"
created: 2026-09-19
---

# `# Content Discovery` 
> 

## 🔐 Connection data

| Parameter | Value                                          |
| --------- | ---------------------------------------------- |
| Host      | `https://tryhackme.com/room/contentdiscoveryx` |
| Port      |                                                |
| Login     |                                                |
| Password  |                                                |

## 🎯 Task of the level
- Learn OSINT
## 🎯 Information

| Type of information              | Data                                                                                              |
| -------------------------------- | ------------------------------------------------------------------------------------------------- |
| temp machine IP                  | `10.129.141.115`                                                                                  |
| robots.txt info                  | disallow `/staff-portal`                                                                          |
| sitemap.xml                      | `/news`<br>`/news/article?id=1,2,3`<br>`/contact`<br>`/customers/login`<br>`/s3cr3t-area`<br><br> |
| server                           | `nginx/1.18.0 (Ubuntu)`                                                                           |
| flag in html comments            | `THM{HTML_COMMENTS_ARE_DANGEROUS}`                                                                |
| flag in secret page              | `THM{NOT_A_SECRET_ANYMORE}`                                                                       |
| flag in /assets                  | `THM{INVALID_DIRECTORY_PERMISSIONS}`                                                              |
| framework                        | `THM-Framework`                                                                                   |
| page on site from framework site | `/thm-framework-login`                                                                            |
| framework page flag              | `THM{CHANGE_DEFAULT_CREDENTIALS}`                                                                 |

## 🎯 Tools

| Tool       | Destination                                          | Usage                         |
| ---------- | ---------------------------------------------------- | ----------------------------- |
| wappalyzer | get information about what technologies used on site | `https://www.wappalyzer.com/` |
## 📚 Key commands/technics

| Coomand | Desctiption |
| ------- | ----------- |
|         |             |
|         |             |
|         |             |

## 💡 Step by step

| Step | Action                                                                                                                  | Information                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Reason                                                                            |
| ---- | ----------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| 1    | discover robots.txt and sitemap.xml                                                                                     | disallow `/staff-portal`<br>`/news`<br>`/news/article?id=1,2,3`<br>`/contact`<br>`/customers/login`<br>`/s3cr3t-area`                                                                                                                                                                                                                                                                                                                                                                                                                                                      | get information about what we allow and what site don't want to be viewed by bots |
| 2    | `curl http://10.129.140.176 -v`                                                                                         | `nginx/1.18.0 (Ubuntu)`<br>FLAG: `THM{HEADER_FLAG}`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | check headers info about site, get flag in custom header                          |
| 3    | inspect home page                                                                                                       | Flag: THM{HTML_COMMENTS_ARE_DANGEROUS}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | check for important comments or other information                                 |
| 4    | View Page Source                                                                                                        | flag: THM{NOT_A_SECRET_ANYMORE}<br>flag: THM{INVALID_DIRECTORY_PERMISSIONS}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | check page source for finding important information in HTML code                  |
| 5    | Go to the framework website and search for important information                                                        | `/thm-framework-login`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | tools that used in site can give important information                            |
| 6    | connect to framework admin panel with standart admin/admin                                                              | flag:<br>THM{CHANGE_DEFAULT_CREDENTIALS}                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | sometime standart password and login not changed                                  |
| 7    | `gobuster dir -u "http://10.129.140.176" -w /path/to/wordlist`                                                          | ```<br>assets               (Status: 301) [Size: 178] [--> http://10.129.140.176/assets/]<br>contact              (Status: 200) [Size: 3108]<br>customers            (Status: 302) [Size: 0] [--> /customers/login]<br>development.log      (Status: 200) [Size: 27]<br>monthly              (Status: 200) [Size: 28]<br>news                 (Status: 200) [Size: 2538]<br>private              (Status: 301) [Size: 178] [--> http://10.129.140.176/private/]<br>robots.txt           (Status: 200) [Size: 46]<br>sitemap.xml          (Status: 200) [Size: 1399]<br>``` | check for hidden directories                                                      |
| 8    | subdomains vulnerability checking                                                                                       | change `/etc/resolv-dnsmasq` and add `nameserver 10.129.140.176` for getting site as dns<br>/etc/init.d/dnsmasq restart to restart dns service<br><br>change `/etc/hosts` with adding at end of file `10.129.140.176 example.thm`, we give example.thm ip                                                                                                                                                                                                                                                                                                                  |                                                                                   |
| 9    | `gobuster dns -d example.thm -w /usr/share/wordlists/SecLists/Discovery/DNS/subdomains-top1million-5000.txt --wildcard` | <br>```<br>Found: shop.example.thm<br><br>Found: www.shop.example.thm<br><br>Found: webdisk.shop.example.thm<br><br>Found: autodiscover.shop.example.thm<br><br>Found: autoconfig.shop.example.thm<br><br>Found: academy.example.thm<br><br>Found: primary.example.thm<br><br>```                                                                                                                                                                                                                                                                                          | check subdomains at -d our new domain                                             |

## 🔍 Result
Flag1: THM{HEADER_FLAG}
Flag2: THM{HTML_COMMENTS_ARE_DANGEROUS}
Flag3: THM{NOT_A_SECRET_ANYMORE}
Flag4: THM{INVALID_DIRECTORY_PERMISSIONS}
Flag5: THM{CHANGE_DEFAULT_CREDENTIALS}

## 🚪 Travel
->-> [tryhackme]

## 🔗 Link
- [Название ресурса](URL)