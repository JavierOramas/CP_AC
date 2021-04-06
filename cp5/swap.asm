%include "io.inc"

section .bss
ix resq 1
iy resq 1

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    call CR
    
    mov eax,ebx ;1er num
    mov ecx,[ix]
    call SwapRigth
    push eax ;guarda valor i-ésimo del 1er num
    
    mov eax,edx ;2do num
    mov ecx,[iy]
    call SwapRigth 
    pop ecx ; ecx=valori-ésimo del 1er num, en eax del 2do num
    
    cmp ecx,eax
    je nada
    
    ;hacer el intercambio    
    mov ecx,[ix]; en eax está el bit del 2do num
    call SwapLeft
    PRINT_STRING "1er numero cambiado: "
    PRINT_UDEC 1,EAX
    NEWLINE
    mov ebx,edx ;2do num
    mov ecx,[iy]  
    call SwapLeft
    PRINT_STRING "2do numero cambiado: "
    PRINT_UDEC 1,EAX 
    
    jmp end 
end:
    ret
xor eax, eax
ret

SwapRigth:
    shr eax,1 
    loop SwapRigth  
    and eax,1 
    ret
    
SwapLeft:
    mov eax,1
bitleft:    
    shl eax,1 
    loop bitleft
    xor eax,ebx
    ret    

CR:
PRINT_STRING "x: "
GET_UDEC 1, ebx
PRINT_UDEC 1, ebx

PRINT_STRING " y: "
GET_UDEC 1, edx
PRINT_UDEC 1, edx

PRINT_STRING " ix: "
GET_UDEC 1,ix
PRINT_UDEC 1, ix

PRINT_STRING " iy: "
GET_UDEC 1,iy
PRINT_UDEC 1, iy
NEWLINE
ret