;multiple input=output
.model small
.stack 100h 
.code
main proc 
    mov ah,1 ;1st input declare
    int 21h  
    
    mov bl,al;1st input taken 
    int 21h
    
    mov bh,al ;3rd input taken
    int 21h 
    
    mov cl,al
    int 21h   ;4th input taken
    
    mov ch,al
    int 21h   ;5th input taken
    
    
    mov ah,2
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    mov ah,2
    int 21h 
    mov dl,bl
    int 21h
    mov dl,bh
    int 21h
    mov dl,cl
    int 21h
    mov dl,ch
    int 21h
    main endp
end main
    
  
    