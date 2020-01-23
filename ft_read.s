global _ft_read

_ft_read:
	mov rax, 0x20000004
	syscall
	ret