section .text
    global _ft_strcmp

_ft_strcmp:
    mov rax, -1

loop:
    inc rax
    mov cl, [rsi + rax]
    mov r8b, [rdi + rax]
    cmp cl, 0
    je end
    cmp r8b, 0
    je end
    cmp cl, r8b
    jne end
    jmp loop

end:
    sub r8b, cl
    movsx rax, r8b
    ret