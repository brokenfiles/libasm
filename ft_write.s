global _ft_write

_ft_write:
	mov rax, 0x20000004
	syscall
	ret