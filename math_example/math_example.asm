section .data
	digit db 0,10

section .text
	global _start
	
_start:
	mov rbx, 0
	call _printZeroToTen
	
	mov rax, 60
	mov rdi, 0
	syscall

_printZeroToTen:
	add rbx, 48

_l1:
	mov [digit], bl

	mov rax, 1
	mov rdi, 1
	mov rsi, digit
 	mov rdx, 2
	syscall

	inc rbx
	cmp rbx, 57
	jle _l1
	ret
