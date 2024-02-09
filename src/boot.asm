mov ah, 0x0E
mov al, 'A'
int 0x10

loop:
    inc al
    cmp al, 'Z' + 1
    je exit

    mov ah, 0x0E
    int 0x10

    jmp loop

exit:
    jmp $

times 510-($-$$) db 0
db 0x55, 0xAA