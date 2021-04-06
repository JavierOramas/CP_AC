main:
        push    rbp
        push    r14
        push    rbx
        sub     rsp, 16
        xor     r14d, r14d
        lea     rsi, [rsp + 12]
        mov     edi, offset .L.str
        xor     eax, eax
        call    __isoc99_scanf
        mov     eax, dword ptr [rsp + 12]
        cmp     eax, 3
        jl      .LBB0_9
        lea     r8d, [rax - 2]
        cmp     eax, 3
        jne     .LBB0_10
        xor     r14d, r14d
        mov     ecx, 2
.LBB0_3:
        test    r8b, 1
        je      .LBB0_9
        cmp     ecx, 3
        jb      .LBB0_8
        mov     esi, 2
.LBB0_6:
        mov     eax, ecx
        xor     edx, edx
        div     esi
        test    edx, edx
        je      .LBB0_9
        inc     esi
        cmp     ecx, esi
        jne     .LBB0_6
.LBB0_8:
        inc     r14d
.LBB0_9:
        mov     edi, offset .L.str.1
        mov     esi, r14d
        xor     eax, eax
        call    printf
        xor     eax, eax
        add     rsp, 16
        pop     rbx
        pop     r14
        pop     rbp
        ret
.LBB0_10:
        mov     edi, r8d
        and     edi, -2
        mov     ecx, 2
        xor     ebx, ebx
        xor     r14d, r14d
        jmp     .LBB0_11
.LBB0_20:
        add     ecx, 2
        add     ebx, -2
        add     edi, -2
        je      .LBB0_3
.LBB0_11:
        cmp     ecx, 3
        jb      .LBB0_15
        mov     esi, 2
.LBB0_14:
        mov     eax, ecx
        xor     edx, edx
        div     esi
        test    edx, edx
        je      .LBB0_16
        inc     esi
        lea     eax, [rbx + rsi]
        cmp     eax, 2
        jne     .LBB0_14
.LBB0_15:
        inc     r14d
.LBB0_16:
        mov     esi, ecx
        or      esi, 1
        mov     ebp, 2
.LBB0_17:
        mov     eax, esi
        xor     edx, edx
        div     ebp
        test    edx, edx
        je      .LBB0_20
        inc     ebp
        lea     eax, [rbx + rbp]
        cmp     eax, 3
        jne     .LBB0_17
        inc     r14d
        jmp     .LBB0_20

.L.str:
        .asciz  "%d"

.L.str.1:
        .asciz  "%d\n"