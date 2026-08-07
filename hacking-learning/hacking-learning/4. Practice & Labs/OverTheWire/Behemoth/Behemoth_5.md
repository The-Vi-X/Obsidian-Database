---
tags:
  - ctf
  - "#file_descriptor_hijacking"
  - "#behemoth_5"
created: 2026-05-31
---

# `Level [5]` 
> 

## 🔐 Connection data

| Parameter | Value                         |
| --------- | ----------------------------- |
| Host      | behemoth.labs.overthewire.org |
| Port      | 2221                          |
| Login     | behemoth5                     |
| Password  | mVfC4rBKZ4                    |

## 🎯 Task of the leves
- File descriptor hijack via localhost listener
## 🎯 Information

| Type of information     | Data                                                     |
| ----------------------- | -------------------------------------------------------- |
| program work            | try to open behemoth6 password file with read permission |
| behemoth6 pass address  | `0xffffca90`<br>`\x90\xca\xff\xff`                       |
| address where arguments | `0xffffd500`                                             |
| fopen mode address      | `0x804a00a`<br>`\x0a\xa0\x04\x08`                        |
| fopen pass address      | `0x804a008`<br>`\x08\xa0\x04\x08`                        |
| atoi port               | `1337`                                                   |

## 🎯 Tools

| Tool | Destination                            | Usage |
| ---- | -------------------------------------- | ----- |
| nc   | creating connection or listening ports |       |
## 📚 Key commands/technics

| Coomand       | Desctiption                                      |
| ------------- | ------------------------------------------------ |
| nc -luvp port | create listening of port to intercept data to it |
|               |                                                  |
|               |                                                  |

## 💡 Step by step

| Step | Action                                    | Information                                                                     |
| ---- | ----------------------------------------- | ------------------------------------------------------------------------------- |
| 1    | analyze binary, find vulnerable functions | we have atoi with port to stream and htons who send bytes to this port          |
| 2    | in gdb x/x 0x804a04c                      | check port in atoi                                                              |
| 3    | nc -luvp 1337&                            | create listener in bg                                                           |
| 4    | /behemoth/behemoth5                       | start binary, it send password for level 6 to our port and print it to terminal |

## 🔍 Result
Flag: j9I1wHzfVC

## 🚪 Travel
-> [Behemoth_5]

## 🔗 Link
- [Название ресурса](URL)