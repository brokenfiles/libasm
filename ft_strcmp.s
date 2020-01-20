global _ft_strcmp

_ft_strcmp:
    mov rax, -1

_ft_strcmp_loop:
    inc rax             ; on met rax à 0 car on veut check le char 0
    mov cl, [rdi + rax] ; on move le char rdi + rax dans cl (8 bits)
    cmp cl, 0           ; on compare cl à 0
    je _return
    mov cl, [rsi + rax] ; on move le char rdi + rax dans cl (8 bits)
    cmp cl, 0           ; on compare cl à 0
    je _return
    cmp cl, [rdi + rax]
    jne _ret_diff

    jmp _ft_strlen_loop ; on refait la boucle si cl n'est pas égal à 0
    jne _return                 ; on retourne rax

_return:
    mov rax, 0
    ret
