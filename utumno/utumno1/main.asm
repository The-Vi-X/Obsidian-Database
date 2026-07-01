┌ 173: int dbg.main (char **envp);
│ `- args(sp[0x8..0x10]) vars(4:sp[0x0..0xc])
│           0x0804921b      55             push ebp ; push EBP onto stack (decrement ESP, store EBP) 
│           0x0804921c      89e5           mov ebp, esp ; copy address from ESP to EBP      
│           0x0804921e      83ec08         sub esp, 81 ; decrease ESP at 129 bytes, make free space
│           0x08049221      8b450c         mov eax, dword [envp] ; copy first element of envp array to EAX
│           0x08049224      83c004         add eax, 4 ; add 4 to array address to get second element
│           0x08049227      8b00           mov eax, dword [eax] ; copy to EAX second array element
│           0x08049229      85c0           test eax, eax ; compare EAX with EAX to check if envp is not 0
│       ┌─< 0x0804922b      7507           jne 0x8049234 ; jump to 0x8049234 if EAX != 0
│       │   0x0804922d      6a01           push 1 ; decrement ESP by 4 and store 1 on top of stack
│       │   0x0804922f      e81cfeffff     call sym.imp.exit ; call exit function; exit function get 1 from stack and over program with code 1
│       │   ; CODE XREF from dbg.main @ 0x804922b(x)
│       └─> 0x08049234      6a00           push 0 ; if second env exist (!=0), decrement ESP by 4 and write 0 to top of stack
│           0x08049236      6aff           push 0xffffffffffffffff ; decrement ESP by 4 and write -1 to top of stack
│           0x08049238      6a22           push 0x22 ; decrement ESP by 4 and push 34 to top of stack
│           0x0804923a      6a07           push 7 ; decrement ESP by 4 and push 7 to top of stack (+rwx to stack memory)
│           0x0804923c      6800100000     push 0x1000 ; decrement ESP by 4 and push 4096 to top of stack
│           0x08049241      6a00           push 0 ; decrement ESP by 4 and push 0 to top of stack
│           0x08049243      e818feffff     call sym.imp.mmap ; void *mmap(void *addr=0, size_t length=4096, int prot=rwx, int flags=34, int fd=-1, off_t offset=0);
            ; ret from mmap to EAX address of memory cell with 4096bytes memory with rwx privileges
│           0x08049248      83c418         add esp, 0x18 ; clear stack (24bytes), from previous commands
│           0x0804924b      a34cb20408     mov dword [obj.rwx], eax ; write to var obj.rwx address of EAX (ret from mmap)
│           0x08049250      a14cb20408     mov eax, dword [obj.rwx] ; set EAX to obj.rwx address
│           0x08049255      85c0           test eax, eax ; test if EAX address don't equal to 0
│       ┌─< 0x08049257      7507           jne 0x8049260 ; jump to 0x8049260 if EAX address have data (not equal to 0)
│       │   0x08049259      6a02           push 2 ; push code 2 to top of stack if EAX = 0
│       │   0x0804925b      e8f0fdffff     call sym.imp.exit ; exit with code 2
│       │   ; CODE XREF from dbg.main @ 0x8049257(x)
│       └─> 0x08049260      8b450c         mov eax, dword [envp] ; set EAX to envp-0x4 address
│           0x08049263      83c004         add eax, 4 ; increase EAX by 4, get second env 
│           0x08049266      8b00           mov eax, dword [eax] ; set to EAX second env data
│           0x08049268      50             push eax ; push second env data to stack
│           0x08049269      e832feffff     call sym.imp.opendir ; function opendir, open directory with second env
│           0x0804926e      83c404         add esp, 4 ; clear stack from call
│           0x08049271      8945f8         mov dword [var_8h], eax ; copy DIR struct (from opendir) to variable var_8h
│           0x08049274      837df800       cmp dword [var_8h], 0 ; check if var_8h have data
│       ┌─< 0x08049278      7533           jne 0x80492ad ; if var_8h have data, jump to 0x80492ad
│       │   0x0804927a      6a01           push 1 ; if var_8h = 0, push 1 to top of stack
│       │   0x0804927c      e8cffdffff     call sym.imp.exit ; exit with code 1
│       │   ; CODE XREF from dbg.main @ 0x80492bf(x)
│      ┌──> 0x08049281      8b45fc         mov eax, dword [s2]
│      ╎│   0x08049284      83c00b         add eax, 0xb
│      ╎│   0x08049287      6a03           push 3
│      ╎│   0x08049289      50             push eax
│      ╎│   0x0804928a      6808a00408     push 0x804a008
│      ╎│   0x0804928f      e8fcfdffff     call sym.imp.strncmp
│      ╎│   0x08049294      83c40c         add esp, 0xc
│      ╎│   0x08049297      85c0           test eax, eax
│     ┌───< 0x08049299      7512           jne 0x80492ad
│     │╎│   0x0804929b      8b45fc         mov eax, dword [s2]
│     │╎│   0x0804929e      83c00b         add eax, 0xb
│     │╎│   0x080492a1      83c003         add eax, 3
│     │╎│   0x080492a4      50             push eax
│     │╎│   0x080492a5      e81cffffff     call dbg.run
│     │╎│   0x080492aa      83c404         add esp, 4
│     │╎│   ; CODE XREFS from dbg.main @ 0x8049278(x), 0x8049299(x)
│     └─└─> 0x080492ad      ff75f8         push dword [var_8h]
│      ╎    0x080492b0      e8cbfdffff     call sym.imp.readdir
│      ╎    0x080492b5      83c404         add esp, 4
│      ╎    0x080492b8      8945fc         mov dword [s2], eax
│      ╎    0x080492bb      837dfc00       cmp dword [s2], 0
│      └──< 0x080492bf      75c0           jne 0x8049281
│           0x080492c1      b800000000     mov eax, 0
│           0x080492c6      c9             leave
└           0x080492c7      c3             ret