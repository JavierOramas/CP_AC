%include "io.inc"

section .data
 var dq 13

section .text
global CMAIN
CMAIN:
 mov dx, [ var]
 cmp dx, 4
 jl prime

 mov cl, 2
L1:
    mov ax, [ var]
    div cl
    cmp ah, 0
    je not_prime
    inc cl
if:
    mov al, cl
    mul cl 
    cmp ax, [ var]
    jge prime
    
else:
    jmp L1
    
prime:
PRINT_STRING "Es Primo"
jmp end

not_prime:
PRINT_STRING "No Es Primo"

end:
ret