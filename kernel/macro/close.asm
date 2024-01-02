%MACRO macro_close 2
    push rax

.1:
    mov al, STATIC_TRUE
    look xchg byte [%1 + %2], al
    test al, al
    jz .1
    pop rax
%ENDMACRO