---
tags:
  - ctf
  - "#utumno0"
  - "#LD_PRELOAD"
  - "#format_string"
created: 2026-06-14
---

# `Level [0]` 
> 

## 🔐 Connection data

| Parameter | Value                       |
| --------- | --------------------------- |
| Host      | utumno.labs.overthewire.org |
| Port      | 2227                        |
| Login     | utumno0                     |
| Password  | utumno0                     |

## 🎯 Task of the level
- Do LD_PRELOAD to perform format string attack
## 🎯 Information

| Type of information | Data                                   |
| ------------------- | -------------------------------------- |
| env working         | LD_PRELOAD in ENV can work with binary |

## 🎯 Tools

| Tool                      | Destination | Usage |
| ------------------------- | ----------- | ----- |
| gcc -shared -fPIC -m32 -o |             |       |
## 📚 Key commands/technics

| Coomand | Desctiption |
| ------- | ----------- |
|         |             |
|         |             |
|         |             |
 
## 💡 Step by step

| Step | Action                                                                            | Information                                                              |
| ---- | --------------------------------------------------------------------------------- | ------------------------------------------------------------------------ |
| 1    | try use LD_PRELOAD, because program output message to terminal, try function PUTS |                                                                          |
| 2    | gcc hook.c -shared -fPIC -m32 -o hook.so                                          | compile hooker to view if we can do LD_PRELOAD to change program working |
| 3    | read password with LD_PRELOAD that coded in program                               | #LD_PRELOAD #format_string                                               |
 
## 🔍 Result
Flag: g0Vpiw3aZt

## 🚪 Travel
-> [Utumno_0]

## 🔗 Link
- [Название ресурса](URL)


 ```
 #include <stdio.h>

  

int puts ( const char * str ) {

printf("%08x.%08x.%08x.%08x.%08x.%08x.%08x.%08x.%08x.%08x\n");

//printf("%s\n", (char*)0x0804907d);

//printf("%s\n", (char*)0x0804917d);

//printf("%s\n", (char*)0x0804a01d);

//printf("%s\n", (char*)0x0804a008);

return 0;

}
 ```