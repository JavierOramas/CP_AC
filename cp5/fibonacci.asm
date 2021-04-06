%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    GET_UDEC 2, ebx
    mov eax, 0
    call Fib
    PRINT_UDEC 1, eax
    xor eax, eax
    ret
    
Fib:
cmp ebx, 2
jg CalcF
add eax, 1
ret

CalcF:
push ebx
dec ebx
call Fib
pop ebx
sub ebx, 2
call Fib
ret
