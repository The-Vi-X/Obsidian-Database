#gcc 
`gcc file.c -o binary -fno-stack-protector -z execstack -no-pie -m32` - компиляция С кода с выключенной защитой
`gcc file.c -o binary -fstack-protector-all` - компиляция С кода с включенной защитой