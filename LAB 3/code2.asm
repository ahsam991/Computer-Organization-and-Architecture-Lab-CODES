.model small
.stack 100h
.data
a db 'lab task $'
.code

main proc
    mov ax, @data
    mov ah ,ax
    
    mov ah , 09h
    lea dx , a
    
    mov ax , c
    mov dl,10
    int 21h
    
    mov dl,13
    int 21h 
    
    mov cx ,b
    mov ah ,2
    mov dl,4
    
    
    exit:
    mov ax,4ch
    int 21h
    main endp
end main

