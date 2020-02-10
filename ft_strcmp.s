global _ft_strcmp			; déclaration du nom de la fonction

_ft_strcmp:					; déclaration de l'étiquette
	mov rax, -1				; on met rax à -1

_loop:						; déclaration de l'étiquette _loop
	inc rax					; on incrémente rax
	mov cl, [rsi + rax]		; on move rsi + rax dans cl
	mov r8b, [rdi + rax]	; on move rdi + rax dans r8b
	cmp cl, 0				; on compate cl à 0
	je _return				; si c'est égal à 0 alors on va à _return
	cmp r8b, 0				; on compate r8b à 0
	je _return				; si c'est égal à 0 alors on va à _return
	cmp cl, r8b				; on compare cl à r8b
	jne _return				; si c'est pas égal on va à _return
	jmp _loop				; on continue la boucle

_return:					; déclaration de l'étiquette _return
	sub r8b, cl				; on soustrait r8b à cl
	movsx rax, r8b			; on fait en sorte que la valeur de return soit bonne
	ret						; on return