; setting the ah register, which is BIOS interrupt 0x10
; function for "Teletype output"
mov ah, 0x0e
mov al, 65
int 0x10

loop:
    inc al
    cmp al, 'Z' + 1
    je exit
    int 0x10
    jmp loop

exit:
    jmp $

; Fill the remaining bytes up to 510 with zeros, unsures teh code is exactly 512 bytes
; adds boot signature, which tells BIOS that this code is bootable
times 510-($-$$) db 0
db 0x55, 0xaa
