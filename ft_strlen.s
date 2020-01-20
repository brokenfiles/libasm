global _ft_strlen       ; la fonction s'appelle ft_strlen

_ft_strlen:             ; déclaration de l'étiquette
    mov rax, -1         ; on met rax à -1 pour l'initialiser

_ft_strlen_loop:
    inc rax             ; on met rax à 0 car on veut check le char 0
    mov cl, [rdi + rax] ; on move le char rdi + rax dans cl (8 bits)
    cmp cl, 0           ; on compare cl à 0
    jne _ft_strlen_loop ; on refait la boucle si cl n'est pas égal à 0
    ret                 ; on retourne rax