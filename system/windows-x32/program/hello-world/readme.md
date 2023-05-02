# ASSEMBLY-PROGRAM - Windows-x32 - Hello-World
### Compile
```
> nasm -f win32 -o program.obj program.asm
> link /OUT:program.exe /ENTRY:start /SUBSYSTEM:CONSOLE program.obj Kernel32.lib
```

### Run
```
> program.exe
```
