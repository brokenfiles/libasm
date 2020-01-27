global _ft_write			; la fonction s'appelle _ft_write

_ft_write:					; déclaration de l'étiquette principale
	mov rax, 0x2000004		; on met le numéro du call dans rax
	syscall					; on fait l'appel système qui prend comme adresse rax
	ret						; on retourne