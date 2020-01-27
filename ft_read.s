global _ft_read			; déclaration du nom de la fonction

_ft_read:				; étiquette de la fonction
	mov rax, 0x2000003	; on met le numéro du call dans rax
	syscall				; on fait l'appel système qui prend comme adresse rax
	ret					; on retourne