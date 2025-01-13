.model small
.stack 100h

.data
.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 123h
    mov bx, 567h
    mov cx, 9ABCh
    mov sp, 100h
    
    push ax
    push bx
    xchg ax, cx
    pop cx
    push ax
    pop bx
    
    mov ah, 2
    mov dx, ax
    int 21h
    
    mov ah, 2
    mov dx, bx
    int 21h
    
    mov ah, 2
    mov dx, cx
    int 21h
    
Exit:
    mov ah, 4ch
    int 21h
    main endp
end main