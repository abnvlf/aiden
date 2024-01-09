kernel_init_string_error_memory db "init: memory map, error aowkaokwa"
kernel_init_string_error_memory_end:
kernel_init_string_error_memory_low	db "Not enough memory."
kernel_init_string_error_memory_low_end:
kernel_init_string_acpi_search db "I am looking for an RSDP table, "
kernel_init_string_acpi_search_end:
kernel_init_string_acpi_search_found: db "found.", STATIC_ASCII_NEW_LINE
kernel_init_string_acpi_search_found_end:
kernel_init_string_acpi_version_2 db "ACPI 2.0+ version.", STATIC_ASCII_NEW_LINE
kernel_init_string_acpi_version_2_end:
kernel_init_string_error_acpi db "not found."
kernel_init_string_error_acpi_end:
kernel_init_string_error_acpi_corrupted	db "ACPI table, corrupted."
kernel_init_string_error_acpi_corrupted_end:
kernel_init_string_error_apic db "APIC table not found."
kernel_init_string_error_apic_end:
kernel_init_string_error_ioapic db "I/O APIC table not found."
kernel_init_string_error_ioapic_end:

kernel_init_apic_semaphore db STATIC_FALSE
kernel_init_ioapic_semaphore db STATIC_FALSE
kernel_init_smp_semaphore db STATIC_FALSE
kernel_init_ap_count db STATIC_EMPTY

kernel_init_apic_id_highest db STATIC_EMPTY

kernel_init_service_list:
    dq service_tresher
    dq service_tx
    dq STATIC_EMPTY