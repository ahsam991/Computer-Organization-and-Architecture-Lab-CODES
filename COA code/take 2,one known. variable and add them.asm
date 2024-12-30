.model small
.stack 100h
.data
msg db  3
msg1 db ?
.code 
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2h  
    add msg,48h
    mov dl,msg
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
