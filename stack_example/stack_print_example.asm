; Command to compile asm: 'nasm -f elf64 -o stack_print_example.o stack_print_example.asm && ld stack_print_example.o -o stack_print_example'
section .data
	text db 'Learnign Assembly',0xa,0
	text2 db 'Like a pro!',0xa,0

section .text
	global _start

_start:
	mov rax, text
	call _print

	mov rax, text2
	call _print
	
	mov rax, 60
	mov rdi, 0
	syscall

_print:
	push rax
	mov rbx, 0
_loop: 
	inc rax
	inc rbx
	mov cl, [rax]
	cmp cl, 0
	jne _loop

	mov rax, 1
	mov rdi, 1
	pop rsi
	mov rdx, rbx
	syscall
	ret
	


