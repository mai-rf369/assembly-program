# ASSEMBLY-PROGRAM - FreeBSD-x32 - Hello-World
### Compile
```
% nasm -f elf32 -o ./program.obj ./program.asm
% ld -m elf_i386_fbsd -o ./program.out ./program.obj
```

### Run
```
% ./program.out
```
