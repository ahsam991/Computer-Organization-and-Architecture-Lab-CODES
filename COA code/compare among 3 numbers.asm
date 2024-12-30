.model small
.stack 100
.code
main proc
    mov ah,1
    int 21h
    mov bl,al
    int 21h
    mov bh,al
    int 21h
    mov cl,al
    
    
    cmp bl,bh
    jge a               ;if bl > bh then execute a  ,else execute b: 
    
    b:
    cmp bh,cl              ;if bh > cl then execute c  ,else execute .below codes untill jmp exit 
    jge c
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit
    
    c:
    mov ah,2
    mov dl,bh
    int 21h 
    jmp exit
    
    a:
    
    cmp bl,cl
    jge d
    mov ah,2
    mov dl,cl
    int 21h
    jmp exit
    
    d:
    mov ah,2
    mov dl,bl
    int 21h
     
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
 
    