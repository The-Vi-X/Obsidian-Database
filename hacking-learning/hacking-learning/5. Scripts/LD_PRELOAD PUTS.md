#LD_PRELOAD
```
#include <stdio.h>

int puts ( const char * str ) {
printf("%08x.%08x.%08x.%08x.%08x.%08x.%08x.%08x.%08x.%08x\n"); //view addresses in use
//printf("%s\n", (char*)0x0804907d);
//printf("%s\n", (char*)0x0804917d);
//printf("%s\n", (char*)0x0804a01d);
//printf("%s\n", (char*)0x0804a008);

return 0;

}
```