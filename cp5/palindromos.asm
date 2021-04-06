%include "io.inc"

section .bss
CAD resb 50

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    mov cl,0
readcad:
    GET_STRING CAD,50
    mov al,[CAD]
    CMP al,10
    JE end
    call ISPALINDROME
    cmp eax,1
    jne readcad
    inc cl   ; Aunmenta contador de palindromos
    jmp readcad
end:   
    PRINT_STRING "Palidrome Count:"
    PRINT_UDEC 1,cl       

    xor eax, eax
    ret
    
ISPALINDROME:
    mov eax,0
    
    mov eax,1
    ret