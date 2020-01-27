global _ft_strdup
extern _ft_strlen
extern _ft_strcpy
extern _malloc

_ft_strdup:
	mov rax, 0
	call _ft_strlen
	inc rax
	push rdi
	mov rdi, rax
	call _malloc
	cmp rax, 0
	je end
	pop rdi
	push rsi
	mov rsi,rdi
	mov rdi,rax
	call _ft_strcpy
	pop rsi
	ret

end:
	mov rax, 0
	ret