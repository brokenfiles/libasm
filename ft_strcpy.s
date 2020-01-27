global _ft_strcpy			; déclaration du nom de la fonction

_ft_strcpy:					; étiquette de la fonction
	mov rax, -1				; on met rax à -1

_loop:						; déclaration de l'étiquette _loop
	inc rax					; incrémentation de rax
	mov cl, [rsi + rax]		; on met le deuxième argument + rax dans cl
	cmp cl, 0				; on compare quand même cl à 0
	je _return				; et si c'est égal à 0 on return
	mov [rdi + rax], cl		; on met cl dans le premier argument + rax
	jmp _loop				; on continue la boucle

_return:					; déclaration de l'étiquette _return
	mov cl, 0				; on met à 0 cl
	mov [rdi + rax], cl		; on met un \0 dans rdi + rax
	mov rax, rdi			; on met le rdi dans rax pour faire le bon return
	ret						; et puis forcément on return