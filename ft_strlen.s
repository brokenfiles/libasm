global _ft_strlen

; int ft_strlen(char *);
_ft_strlen:
	mov rax, -1
FT_STRLEN_LOOP:
	inc rax
	cmp byte [rdi + rax], 0  ; compare rbx[rax] and '\0'
	jne FT_STRLEN_LOOP
	ret
