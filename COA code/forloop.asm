.model small
.stack 100h
.data 
.code
 main proc
    mov ah,2
    mov bh,'*'
    mov cx,5
    mov dl,bh
    
    top:
    int 21h
    loop top
    
    exit:
    mov ah,4ch
    int 21h