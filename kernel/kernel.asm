    %include "config.asm"
    %include "kernel/config.asm"

[BITS 32]

[ORG KERNEL_BASE_address]

_start:
    mov dword [header], "AIDEN"
    jmp init

HEADER_MAGIC equ 0x1BADB002

HEADER_FLAG_align equ 1 << 0
HEADER_FLAG_memory_map equ 1 << 1
HEADER_FLAG_header equ 1 << 16
HEADER_FLAG_default equ HEADER_FLAG_align | HEADER_FLAG_memory_map | HEADER_FLAG_header

HEADER_CHECKSUM equ -(HEADER_FLAG_default + HEADER_MAGIC)

align 0x04
header:
    dd HEADER_MAGIC
    dd HEADER_FLAG_default
    dd HEADER_CHECKSUM
    dd header
    dd _start
    dd STATIC_EMPTY
    dd STATIC_EMPTY
    dd init
align 0x10
header_end:

init:
    %include "kernel/init.asm"

kernel:
    jmp $
    %include "kernel/macro/close.asm"
    %include "kernel/panic.asm"
    %include "kernel/memory.asm"
    %include "library/page_align_up.asm"

    %include "library/page_align_up.asm"
    %include "library/page_from_size.asm"
kernel_end: