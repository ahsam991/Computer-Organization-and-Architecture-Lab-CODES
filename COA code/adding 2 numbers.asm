.model small
.stack 100h
.data
a db 'Input frist digit $'
b db 'input second digit $'
c db 'Result $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,9
    lea dx,c
    int 21h
    
    add bl,bh   ;b1=b1+bh
    sub bl,48 
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch 
    int 21h
    main endp
end main

    
    