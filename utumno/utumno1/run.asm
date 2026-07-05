┌ 85: dbg.run (void *p, char *arg_8h);
│ `- args(sp[0x4..0x8]) vars(3:sp[0x4..0x10])
│           0x080491c6      55             push ebp                    ; utumno1.c:30:1 ; void run(void * p);
│           0x080491c7      89e5           mov ebp, esp
│           0x080491c9      83ec0c         sub esp, 0xc
│           0x080491cc      8b4508         mov eax, dword [arg_8h]
│           0x080491cf      8945f4         mov dword [src], eax
│           0x080491d2      65a114000000   mov eax, dword gs:[0x14]
│           0x080491d8      8945fc         mov dword [p], eax
│           0x34080491db      31c0           xor eax, eax
│           0x080491dd      a14cb20408     mov eax, dword [obj.rwx]    ; utumno1.c:33:5 ; [0x804b24c:4]=0
│           0x080491e2      6800100000     push 0x1000                 ; size_t  n
│           0x080491e7      ff75f4         push dword [src]            ; const char *src
│           0x080491ea      50             push eax                    ; char *dest
│           0x080491eb      e880feffff     call sym.imp.strncpy        ; char *strncpy(char *dest, const char *src, size_t  n)
│           0x080491f0      83c40c         add esp, 0xc
│           0x080491f3      8d45f8         lea eax, [var_8h]           ; utumno1.c:35:19
│           0x080491f6      83c00c         add eax, 0xc                ; 12
│           0x080491f9      8945f8         mov dword [var_8h], eax     ; utumno1.c:35:7
│           0x080491fc      8b154cb20408   mov edx, dword [obj.rwx]    ; utumno1.c:36:10 ; [0x804b24c:4]=0
│           0x08049202      8b45f8         mov eax, dword [var_8h]     ; utumno1.c:36:5
│           0x08049205      8910           mov dword [eax], edx        ; utumno1.c:36:8
│           0x08049207      90             nop                         ; utumno1.c:37:1
│           0x08049208      8b45fc         mov eax, dword [p]
│           0x0804920b      652b051400..   sub eax, dword gs:[0x14]
│       ┌─< 0x08049212      7405           je 0x8049219
│       │   0x08049214      e827feffff     call sym.imp.__stack_chk_fail ; void stack_chk_fail(void)
│       │   ; CODE XREF from dbg.run @ 0x8049212(x)
│       └─> 0x08049219      c9             leave
└           0x0804921a      c3             ret