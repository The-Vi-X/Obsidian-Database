┌ 85: dbg.run (void *p, char *arg_8h);
│ `- args(sp[0x4..0x8]) vars(3:sp[0x4..0x10])
│           0x080491c6      55             push ebp                     ; save previous base pointer
│           0x080491c7      89e5           mov ebp, esp                 ; set new base pointer (current stack frame)
│           0x080491c9      83ec0c         sub esp, 0xc                ; allocate 12 bytes on stack for local vars
│           0x080491cc      8b4508         mov eax, dword [arg_8h]     ; eax = pointer to argv[1] (string)
│           0x080491cf      8945f4         mov dword [ebp-0xc], eax    ; store pointer to string at ebp-0xc (local var)
│           0x080491d2      65a114000000   mov eax, dword gs:[0x14]    ; eax = stack canary (from TLS)
│           0x080491d8      8945fc         mov dword [ebp-4], eax      ; store canary at ebp-4 (stack protection)
│           0x080491db      31c0           xor eax, eax                ; eax = 0 (clear canary from register)
│           0x080491dd      a14cb20408     mov eax, dword [obj.rwx]    ; eax = pointer to obj.rwx (buffer in RWX memory)
│           0x080491e2      6800100000     push 0x1000                 ; push 4096 (size for strncpy)
│           0x080491e7      ff75f4         push dword [ebp-0xc]        ; push pointer to argv[1] (source)
│           0x080491ea      50             push eax                    ; push pointer to obj.rwx (destination)
│           0x080491eb      e880feffff     call sym.imp.strncpy        ; strncpy(obj.rwx, argv[1], 4096)
│                                                                      ; returns pointer to obj.rwx in EAX
│           0x080491f0      83c40c         add esp, 0xc                ; clean up 3 args from stack (12 bytes)
│           0x080491f3      8d45f8         lea eax, [ebp-8]            ; eax = address of local var at ebp-8
│           0x080491f6      83c00c         add eax, 0xc                ; eax = (address of ebp-8) + 12 = &(ebp+4) = address of saved EBP
│           0x080491f9      8945f8         mov dword [ebp-8], eax      ; store overwritten address at ebp-8 (local var)
│           0x080491fc      8b154cb20408   mov edx, dword [obj.rwx]    ; edx = pointer to obj.rwx
│           0x08049202      8b45f8         mov eax, dword [ebp-8]      ; eax = value from ebp-8 (address of saved EBP)
│           0x08049205      8910           mov dword [eax], edx        ; *eax = edx (write ptr to obj.rwx into saved EBP slot)
│           0x08049207      90             nop                         ; no operation (padding / alignment)
│           0x08049208      8b45fc         mov eax, dword [ebp-4]      ; eax = saved canary
│           0x0804920b      652b051400..   sub eax, dword gs:[0x14]   ; compare saved canary with current TLS canary
│       ┌─< 0x08049212      7405           je 0x8049219               ; if canary matches -> jump to leave
│       │   0x08049214      e827feffff     call sym.imp.__stack_chk_fail ; if canary mismatch -> abort()
│       │   ; CODE XREF from dbg.run @ 0x8049212(x)
│       └─> 0x08049219      c9             leave                      ; restore esp from ebp, pop ebp
└           0x0804921a      c3             ret                        ; return to caller