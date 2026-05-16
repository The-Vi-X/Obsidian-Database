```
#include <stdio.h>
#include <stdlib.h>

int main() {
    char *addr = getenv("SHELLCODE");
    printf("SHELLCODE is at %p\n", addr);
    return 0;
}
```