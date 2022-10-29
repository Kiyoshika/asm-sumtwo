.section .data
msg: .asciz "Value is: %d\n"

.section .text
.globl main

sumtwo:
	movq %rsp, %rbp
	addq %rsi, %rdi
	movq %rdi, %rax
	ret

main:
	
	movq $5, %rdi
	movq $12, %rsi
	call sumtwo

    leaq msg(%rip), %rdi
	movq %rax, %rsi
    xor %al, %al
    call printf

    xor %edi, %edi
    call exit
