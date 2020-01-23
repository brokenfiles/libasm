global _ft_strcmp

_ft_strcmp:
	mov rax, -1

_loop:
	inc rax
	mov cl, [rsi + rax]
	mov al, [rdi + rax]
	cmp cl, 0
	je _return
	cmp al, 0
	je _return
	cmp cl, al
	jne _return
	jmp _loop

_return:
	sub al, cl
	movsx rax, al
	ret