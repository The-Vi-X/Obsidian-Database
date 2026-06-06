---
tags:
  - ctf
  - "#behemoth_6"
  - "#arbitary_shellcode_execution"
created: 2026-06-03
---

# `Level [6]` 
> 

## 🔐 Connection data

| Parameter | Value                         |
| --------- | ----------------------------- |
| Host      | behemoth.labs.overthewire.org |
| Port      | 2221                          |
| Login     | behemoth6                     |
| Password  | j9I1wHzfVC                    |
|           |                               |

## 🎯 Task of the level
- **Arbitrary Shellcode Execution via String Comparison Bypass**
## 🎯 Information

| Type of information   | Data                                                        |
| --------------------- | ----------------------------------------------------------- |
| behemoth6 work        | opens /behemoth6_reader with read mode                      |
| behemoth6_reader work | try opens shellcode.txt                                     |
| shellcode addr        | `0xffffd4e7`<br>`\xe7\xd4\xff\xff`                          |
| exploiting way        | program can open shellcode.txt in directory where u are now |

## 🎯 Tools

| Tool           | Destination        | Usage                                                     |
| -------------- | ------------------ | --------------------------------------------------------- |
| pwn shellcraft | creating shellcode | pwn shellcraft i386.linux echo HelloKitty > shellcode.txt |
## 📚 Key commands/technics

| Coomand                                                   | Desctiption                                                 |
| --------------------------------------------------------- | ----------------------------------------------------------- |
| pwn shellcraft i386.linux echo HelloKitty > shellcode.txt | creating shellcode with pwn shellcraft with HelloKitty echo |
|                                                           |                                                             |
|                                                           |                                                             |

## 💡 Step by step

| Step | Action                                                    | Information                                                                 |
| ---- | --------------------------------------------------------- | --------------------------------------------------------------------------- |
| 1    | learn how to binary work                                  |                                                                             |
| 2    | pwn shellcraft i386.linux echo HelloKitty > shellcode.txt | create shellcode that stdout HelloKitty to shellcode.txt in temp folder<br> |
| 3    | run binary                                                |                                                                             |

## 🔍 Result
Flag: sV17oOQTKc

## 🚪 Travel
-> [Behemoth_6]

## 🔗 Link
- [Название ресурса](URL)