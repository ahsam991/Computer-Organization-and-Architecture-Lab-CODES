.model small
.stack 100h
.code
main proc
    
    mov ah,1
    int 21h
    mov bl,al
    
     
    
    mov ah,2h
    mov dl,0Ah
    int 21h           ;new line print in hex
    mov dl,0Dh
    int 21h
    
    
  
     mov ah,1
     int 21h
     mov bh,al
     
     mov ah,2
     mov dl,10      ;new line print in decimal
     int 21h
     mov dl,13
     int 21h
     
     mov ah,2
     mov dl,bl                              
     int 21h
     
     
     mov ah,2h
    mov dl,0Ah
    int 21h          ;new line print in hex
    mov dl,0Dh
    int 21h 
    
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2             ;beep sound
    mov dl,07
    int 21h   
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main