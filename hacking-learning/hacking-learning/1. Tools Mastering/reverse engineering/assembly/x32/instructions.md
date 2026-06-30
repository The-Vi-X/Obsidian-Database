
| command | what mean | description                                                                                                  | examples                                                                                        |
| ------- | --------- | ------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------- |
| #push   | push      | decrease #esp by 4 and copy data to new address of the top of the stack                                      | `push ebp` - cupy #ebp to top of the stack                                                      |
| #mov    | move      | cope address from`source` to `destination`                                                                   | `mov destination, source`<br>`mov ebp, esp` - copy address from #esp to ebp                     |
| #sub    | subtract  | subtract `data` from `register` of `memory`                                                                  | `sub register, data`<br>`sub esp, 0x81` - decrease esp at 129 bytes, (give free space on stack) |
| #test   | test      | Perform bitwise AND without modifying operands<br>Sets flags ZF:<br>if result **zero** - ZF=0<br>else - ZF=1 | `test reg, bit`<br>`test eax, eax` - check if eax is zero                                       |
