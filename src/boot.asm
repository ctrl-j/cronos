mov ah, 0x0E
mov al, 'A'
int 0x10

mov bl, 0

loop:
    inc al
    cmp al, 'z' + 1
    je exit

    cmp bl, 0
    je lower
    jne upper

upper:
    sub al, 32
    dec bl
    jmp printchar

lower:
    add al, 32
    inc bl
    jmp printchar

printchar:
    mov ah, 0x0E
    int 0x10
    jmp loop

exit:
    jmp $

times 510-($-$$) db 0
db 0x55, 0xAA