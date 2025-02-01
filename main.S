global _start

section .data
helloworld: db "Insert a thing: "
        .len: equ $ - helloworld

section .bss
var: resb 100
   .len: equ 100

section .text
_start:
        mov rax,1
        mov rdi,1
        mov rsi,helloworld
        mov rdx,helloworld.len
        syscall

        mov rax,0
        mov rdi,0
        mov rsi,var
        mov rdx,var.len
        syscall

        mov rax,1
        mov rdi,1
        mov rsi,var
        mov rdx,var.len
        syscall

        mov rax,60
        mov rdi,0
        syscall
