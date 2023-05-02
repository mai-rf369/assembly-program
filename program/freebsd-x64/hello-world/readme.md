# ASSEMBLY-PROGRAM - FreeBSD-x64 - Hello-World
## Compile
```
% nasm -f elf64 -o ./program.obj ./program.asm
% ld -m elf_x86_64 -o ./program.out ./program.obj
```

## Run
```
% ./program.out
```
