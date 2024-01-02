%include "aiden/config.asm"

[BITS 16]
[ORG STATIC_ZERO_address]

aiden:
    cli
    jmp 0x0000:.repair_cs

.repair_cs:
    xor ax, ax
    mov ds, ax
    mov es, ax
    mov ss, ax

    mov sp, STATIC_ZERO_stack
    cld
    mov al, STATIC_EMPTY
    out DRIVER_PIT_PORT_command, al

    sti
    
    mov ax, 0x2401
    int 0x15
    in al, 0x92
    or al, 2
    out 0x92, al
    
    mov ax, 0x0003
    int 0x10

    mov ah, 0x42
    mov si, aiden_table_disk_address_pocket
    int 0x13

    mov si, STATIC_ZERO_ERROR_device

    jc aiden_panic

    xor ebx, ebx
    mov edx, 0x534D4150

    mov si, STATIC_ZERO_ERROR_memory
    mov edi, STATIC_ZERO_MEMORY_MAP