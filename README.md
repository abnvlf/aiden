![image](.github/aiden.png)

Multitask Operating System with x86_64 ASM.

## Requirements

The minimum specification for the Aiden kernel is:
- 2 KiB of memory

## Running and Compile

```shell
git clone https://github.com/slowy07/aiden
cd aiden

# assembling the kernel
nasm -f bin kernel/kernel.asm -o build/kernel
nasm -f bin aiden/aiden.asm -o build/aiden.raw
```

## Testing on QEMU

QEMU is used because it can run on any platform, and it is employed for the development and testing of Aiden.
```shell
qemu-system-x86_64 -drive file=build/aiden.raw,media=disk,format=raw -m 2 -smp 1 -rtc base=localtime
```