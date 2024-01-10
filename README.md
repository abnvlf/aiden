# aiden
multitask operating system with x86_64 asm

## requirements

minimum specification for aiden kernel
- 2kib of memory

## running and compile

```shell
git clone https://github.com/slowy07/aiden
cd aiden

# assembling the kernel
nasm -f bin kernel/kernel.asm -o build/kernel
nasm -f bin aiden/aiden.asm -o build/aiden.raw
```

## testing on qemu

QEMU are used cause can run any platform, and for the develop and test the aiden
```shell
qemu-system-x86_64 -drive file=build/aiden.raw,media=disk,format=raw -m 2 -smp 1 -rtc base=localtime
```
