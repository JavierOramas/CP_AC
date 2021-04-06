%include "io.inc"
%define true 1
%define false 0

Is_Prime:
cmp bx, 4     ;Si el num es < 4 es primo
jl end        ;

mov cl, 2
L1:
    mov ax, bx
    div cl
    cmp ah, 0
    je end1
    inc cl

    mov al, cl
    mul cl
    cmp ax, bx
    jle L1
    
end:
mov eax, true
ret
    
end1:
mov eax, false
ret


section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging

mov dx, 0
GET_UDEC 2, bx
L2:
    call Is_Prime 
    cmp eax, 1
    jne J1
    inc dx
J1: dec bx
    jnz L2

PRINT_UDEC 1, dx

xor eax, eax
ret