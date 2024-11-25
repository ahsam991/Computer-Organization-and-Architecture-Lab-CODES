model small

.stack 100h
 
.data
 
.code

main proc

    mov ax, @data

    mov ds, ax

    mov ax, 9

    mov bx, 8

    mov cx, 9

    cmp ax, bx 

    jl ZERO

    jg BX_

    jmp Exit

BX_:

    cmp bx, cx

    jl ZERO

    jg ONE

    jmp Exit
 
ZERO:

    mov dx, '0'

    mov ah, 2

    mov dx, dx

    int 21h

    jmp Exit
 
ONE:

    mov dx, '1'

    mov ah, 2

    mov dx, dx

    int 21h

    jmp Exit

 
Exit:     

    mov ah, 4ch

    int 21h

    main endp

end main
 
