align STATIC_QWORD_SIZE_byte, db STATIC_NOTHING
kernel_gdt_header	dw	KERNEL_PAGE_SIZE_byte
					dq	STATIC_EMPTY

align STATIC_QWORD_SIZE_byte, db STATIC_NOTHING
kernel_gdt_tss_bsp_selector dw STATIC_EMPTY
kernel_gdt_tss_cpu_selector dw STATIC_EMPTY

align STATIC_QWORD_SIZE_byte, db STATIC_NOTHING
kernel_gdt_tss_table:
    dd STATIC_EMPTY
    dq KERNEL_STACK_pointer
    times 92 db STATIC_EMPTY
kernel_gdt_tss_table_end:

align STATIC_QWORD_SIZE_byte, db STATIC_NOTHING
kernel_idt_header:
    dw KERNEL_PAGE_SIZE_byte
    dw STATIC_EMPTY

kernel_string_space db STATIC_ASCII_SPACE
kernel_string_new_line db STATIC_ASCII_NEW_LINE
kernel_string_dot db STATIC_ASCII_DOT